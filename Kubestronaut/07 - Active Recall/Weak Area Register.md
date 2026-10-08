---
type: kubestronaut-weak-area-register
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - active-recall
  - weak-areas
  - review
---

## Purpose

Use this register to track concepts, labs, and troubleshooting patterns that need deliberate repetition.

## Weak area workflow

1. Add a weak area when confidence is below 3/5, a lab needs repetition, an incident drill is not mastered, or a practice exam exposes a gap.
2. Link the source note.
3. Create a concrete review task with a due date.
4. Update confidence only after a real review, lab retry, or practice question attempt.
5. Remove or archive the weak area only after confidence is at least 4/5 and the practical task can be completed without notes.

## Open weak areas

```dataview
TABLE certification, topic, confidence, next_review, status
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND confidence < 3
SORT next_review ASC, confidence ASC
```

## Lab weak areas

```dataview
TABLE lab_id, certification, topic, difficulty, repeat_required, repeat_reason, next_review
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND (repeat_required = true OR status != "completed")
SORT next_review ASC, certification ASC
```

## Troubleshooting weak areas

```dataview
TABLE component, failure_type, severity, confidence, next_review, status
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND confidence < 4
SORT next_review ASC, confidence ASC
```

## Certification weak areas

```dataview
TABLE certification, weak_areas, readiness_status, mock_exam_score, target_date
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Mock exam weak areas

```dataview
TABLE date, certification, exam_name, score, passing_score, result, weak_areas, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam" AND (length(weak_areas) > 0 OR follow_up_completed = false)
SORT date DESC
```

## Manual weak area log

| Date added | Weak area | Source | Next action | Due | Status |
|---|---|---|---|---:|---|
| 2026-10-08 | KCNA initial weak areas unknown until first review | [[KCNA Tracker]] | Complete first KCNA recall/lab cycle | 2026-10-31 | open |
