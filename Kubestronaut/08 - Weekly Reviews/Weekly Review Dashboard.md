---
type: kubestronaut-dashboard
created: 2026-10-08
tags:
  - kubestronaut
  - weekly-review
  - dashboard
---

## Weekly review dashboard

```dataview
TABLE week_start, week_end, certification_focus, study_hours, labs_completed, review_status, weak_areas_found, next_week_focus
FROM "Kubestronaut/08 - Weekly Reviews"
WHERE type = "kubestronaut-weekly-review"
SORT week_start DESC
```

## Weekly reviews to complete

```dataview
TABLE week_start, week_end, certification_focus, review_status
FROM "Kubestronaut/08 - Weekly Reviews"
WHERE type = "kubestronaut-weekly-review" AND review_status != "completed"
SORT week_start ASC
```

## Weekly review tasks

```tasks
not done
path includes Kubestronaut/08 - Weekly Reviews
sort by due
```

## Weekly review questions

1. What did I learn?
2. How many hours did I study?
3. Which labs did I complete?
4. What concepts remain unclear?
5. Which practical challenges did I struggle with?
6. What mistakes did I repeat?
7. What should I revise?
8. What is next week's learning objective?
9. Am I progressing toward the certification target?
