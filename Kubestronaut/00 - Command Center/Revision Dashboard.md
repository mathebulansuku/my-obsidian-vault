---
type: kubestronaut-dashboard
created: 2026-10-08
plugin_integration:
  - dataview
  - tasks
  - spaced-repetition
tags:
  - kubestronaut
  - dashboard
  - revision
---

## What should I revise today?

> [!info] Revision model
> This dashboard prioritizes weak areas from notes and tasks. The Spaced Repetition plugin should still manage flashcard review scheduling natively.

## Low-confidence daily topics

```dataview
TABLE date, certification, topic, confidence, next_review, status
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND confidence < 3
SORT next_review ASC, date DESC
```

## Reviews due by note metadata

```dataview
TABLE date, certification, topic, confidence, next_review
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND next_review AND next_review <= date(today)
SORT next_review ASC
```

## Revision tasks due

```tasks
not done
path includes Kubestronaut
tags include #review
due before tomorrow
sort by due
```

## Incomplete labs to repeat

```dataview
TABLE lab_id, certification, topic, difficulty, status, repeat_required, repeat_reason
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND (status != "completed" OR repeat_required = true)
SORT certification ASC, difficulty ASC
```

## Weak certification areas

```dataview
TABLE certification, weak_areas, readiness_status, mock_exam_score
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT certification ASC
```

## Lab reviews due

```dataview
TABLE lab_id, certification, topic, difficulty, status, repeat_required, next_review
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND next_review AND next_review <= date(today)
SORT next_review ASC, certification ASC
```

## Troubleshooting reviews due

```dataview
TABLE component, failure_type, severity, confidence, status, next_review
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND next_review AND next_review <= date(today)
SORT next_review ASC, confidence ASC
```

## Flashcard review

Use the Spaced Repetition plugin's native review command for due cards. If the plugin does not expose review status to Dataview, this dashboard intentionally does not invent a separate card scheduler.

Start here:

- [[Active Recall Dashboard]]
- [[Weak Area Register]]
- [[Review Protocol]]
- [[Spaced Repetition Test Cards]]
