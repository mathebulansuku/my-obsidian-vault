---
type: kubestronaut-dashboard
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - monthly-review
  - dashboard
---

## Monthly review dashboard

## Monthly reviews

```dataview
TABLE month, certification_focus, study_hours, completed_sessions, completed_labs, review_status, readiness_change, next_month_focus
FROM "Kubestronaut/08 - Weekly Reviews"
WHERE type = "kubestronaut-monthly-review"
SORT month DESC
```

## Current month daily progress

```dataview
TABLE date, certification, topic, status, actual_minutes, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND date >= date(today).replace(day, 1)
SORT date ASC
```

## Current month labs

```dataview
TABLE lab_id, certification, topic, status, actual_minutes, repeat_required
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab"
SORT lab_id ASC
```

## Current month mock exams

```dataview
TABLE date, certification, exam_name, score, passing_score, result, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam"
SORT date DESC
```

## Monthly review tasks

```tasks
not done
path includes Kubestronaut/08 - Weekly Reviews
tags include #monthly-review
sort by due
```

## Links

- [[Maintenance Dashboard]]
- [[Weekly Maintenance Routine]]
- [[Learning Analytics]]
- [[Certification Dashboard]]
- [[Weak Area Register]]
