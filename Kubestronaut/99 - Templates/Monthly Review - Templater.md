---
type: kubestronaut-template
template_for: kubestronaut-monthly-review
templater: true
tags:
  - kubestronaut
  - template
  - templater
  - monthly-review
---

---
type: kubestronaut-monthly-review
month: <% tp.date.now("YYYY-MM") %>
certification_focus:
study_hours: 0
completed_sessions: 0
completed_labs: 0
review_status: not-started
mock_exams_completed: 0
readiness_change:
next_month_focus:
tags:
  - kubestronaut
  - monthly-review
---

## Monthly summary

## Study consistency

## Completed topics

```dataview
TABLE date, certification, topic, status, actual_minutes, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND dateformat(date, "yyyy-MM") = this.month
SORT date ASC
```

## Completed labs

```dataview
TABLE lab_id, certification, topic, status, actual_minutes, repeat_required
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab"
SORT certification ASC, lab_id ASC
```

## Mock exam performance

```dataview
TABLE date, certification, exam_name, score, passing_score, result, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam" AND dateformat(date, "yyyy-MM") = this.month
SORT date ASC
```

## Weak areas

## Concepts mastered

## Certification readiness

## Next month plan

## Tasks

- [ ] Update certification tracker #kubestronaut #certification #monthly-review
- [ ] Review weak topics in [[Weak Area Register]] #kubestronaut #review #monthly-review
- [ ] Plan next month schedule #kubestronaut #monthly-review
- [ ] Run [[Weekly Maintenance Routine]] as monthly cleanup #kubestronaut #maintenance #monthly-review
- [ ] Update [[Maintenance Dashboard]] findings #kubestronaut #maintenance #monthly-review
