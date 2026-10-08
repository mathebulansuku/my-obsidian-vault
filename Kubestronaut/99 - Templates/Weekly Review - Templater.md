---
type: kubestronaut-template
template_for: kubestronaut-weekly-review
templater: true
tags:
  - kubestronaut
  - template
  - templater
  - weekly-review
---

---
type: kubestronaut-weekly-review
week_start:
week_end:
certification_focus:
study_hours: 0
labs_completed: 0
review_status: not-started
weak_areas_found: []
next_week_focus:
review_tasks_created: 0
maintenance_completed: false
knowledge_notes_created: 0
stale_items_found: 0
tags:
  - kubestronaut
  - weekly-review
---

## What did I learn?

```dataview
TABLE date, topic, status, actual_minutes
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND date >= this.week_start AND date <= this.week_end
SORT date ASC
```

## How many hours did I study?

```dataview
TABLE sum(rows.actual_minutes) / 60 AS "Actual hours"
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND date >= this.week_start AND date <= this.week_end
GROUP BY true
```

## Which labs did I complete?

## What concepts remain unclear?

## Which practical challenges did I struggle with?

## What mistakes did I repeat?

## What should I revise?

## What is next week's learning objective?

## Am I progressing toward the certification target?

## Maintenance check

- [[Maintenance Dashboard]]
- [[Weekly Maintenance Routine]]

## Tasks

- [ ] Summarize completed topics #kubestronaut #weekly-review
- [ ] Update weak areas #kubestronaut #weekly-review #review
- [ ] Plan next week's learning #kubestronaut #weekly-review
- [ ] Run weekly maintenance routine #kubestronaut #weekly-review #maintenance
- [ ] Update knowledge notes from repeated weak areas #kubestronaut #weekly-review #knowledge-base
