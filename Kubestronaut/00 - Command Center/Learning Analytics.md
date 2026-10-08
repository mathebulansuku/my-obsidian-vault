---
type: kubestronaut-dashboard
created: 2026-10-08
updated: 2026-10-08
tags:
  - kubestronaut
  - analytics
  - dashboard
---

## Learning analytics

> [!info] Measurement rule
> Planned time and actual time are separate. Progress should be based on explicit completion evidence, not the existence of a scheduled note.

## Actual study hours

```dataview
TABLE sum(map(rows, (r) => default(r.actual_minutes, default(r.study_minutes, 0)))) / 60 AS "Actual study hours"
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
GROUP BY true
```

## Planned vs actual study time

```dataview
TABLE date, certification, topic, planned_minutes, actual_minutes, study_minutes, status
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
SORT date ASC
```

## Completed sessions

```dataview
TABLE length(rows) AS "Completed sessions"
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
AND status = "completed"
AND lesson_completed = true
AND lab_completed = true
AND recall_completed = true
GROUP BY true
```

## Completion evidence by day

```dataview
TABLE date, certification, topic, status, lesson_completed, lab_completed, recall_completed, actual_minutes, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
SORT date ASC
```

## Completed labs

```dataview
TABLE lab_id, certification, topic, difficulty, estimated_minutes, completed_date
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND status = "completed"
SORT certification ASC, topic ASC
```

## Topics requiring revision

```dataview
TABLE date, certification, topic, confidence, next_review, status
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND confidence < 3
SORT next_review ASC, date DESC
```

## Reviews due

```dataview
TABLE date, certification, topic, confidence, next_review
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND next_review AND next_review <= date(today)
SORT next_review ASC
```

## Mock exam scores

```dataview
TABLE date, certification, score, mock_score, provider, status
FROM "Kubestronaut"
WHERE type = "kubestronaut-mock-exam" OR mock_score
SORT date DESC
```

## Open review tasks

```tasks
not done
path includes Kubestronaut
tags include #review
sort by due
```

## Manual metrics to update weekly

- Current streak: 0
- Longest streak: 0
- Topics mastered: 0
- Certification readiness: not assessed
