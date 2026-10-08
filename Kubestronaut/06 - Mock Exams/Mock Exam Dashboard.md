---
type: kubestronaut-dashboard
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - mock-exam
  - exam-readiness
  - dashboard
---

## Mock exam dashboard

Use this dashboard to track practice exams, readiness trends, timing, and follow-up work.

## Mock exam records

```dataview
TABLE date, certification, provider, score, passing_score, result, actual_minutes, time_limit_minutes, readiness_impact, status
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam"
SORT date DESC
```

## Latest mock by certification

```dataview
TABLE rows[0].date AS "Latest date", rows[0].score AS "Latest score", rows[0].passing_score AS "Passing score", rows[0].result AS "Result", rows[0].actual_minutes AS "Minutes"
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam"
SORT date DESC
GROUP BY certification
```

## Failed or weak mocks

```dataview
TABLE date, certification, provider, score, passing_score, result, weak_areas, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam" AND (result != "pass" OR follow_up_completed = false)
SORT date DESC
```

## Time management review

```dataview
TABLE date, certification, score, actual_minutes, time_limit_minutes, time_remaining_minutes, time_management_score
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam"
SORT date DESC
```

## Mock exam follow-up tasks

```tasks
not done
path includes Kubestronaut/06 - Mock Exams
sort by due
```

## Certification readiness scorecards

```dataview
TABLE certification, readiness_status, coverage_score, lab_score, mock_exam_score, troubleshooting_score, time_management_score, no_notes_score, practice_exams_completed, exam_booking_status, exam_date
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Readiness links

- [[Exam Readiness Protocol]]
- [[Exam Booking Decision Checklist]]
- [[Weak Area Register]]
- [[Active Recall Dashboard]]
- [[Certification Dashboard]]

## Operating rules

- Record every mock attempt, even poor attempts.
- Do not overwrite an old mock score; create a new mock exam note for each attempt.
- Do not mark follow-up complete until incorrect answers were reviewed and weak areas were added to the review system.
- Do not infer official pass status from mock exam scores.
