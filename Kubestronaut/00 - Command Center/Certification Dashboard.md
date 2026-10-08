---
type: kubestronaut-dashboard
created: 2026-10-08
tags:
  - kubestronaut
  - certification
  - dashboard
---

## Certification tracker

| Certification | Target | Course % | Lessons | Labs | Practice exams | Booking | Exam date | Pass | Expiry |
|---|---:|---:|---:|---:|---|---|---|---|---|
| [[KCNA Tracker]] | November 2026 | 0 | 0 | 0 |  | Not booked |  |  |  |
| [[CKA Tracker]] | January 2027 | 0 | 0 | 0 |  | Not booked |  |  |  |
| [[CKAD Tracker]] | March 2027 | 0 | 0 | 0 |  | Not booked |  |  |  |
| [[KCSA Tracker]] | April 2027 | 0 | 0 | 0 |  | Not booked |  |  |  |
| [[CKS Tracker]] | September 2027 | 0 | 0 | 0 |  | Not booked |  |  |  |

## Dynamic certification tracker

```dataview
TABLE
target_month AS "Target",
status AS "Status",
course_completion AS "Course %",
lessons_completed AS "Lessons",
labs_completed AS "Labs",
practice_exams_completed AS "Practice exams",
exam_booking_status AS "Booking",
exam_date AS "Exam date",
pass_status AS "Pass",
award_date AS "Award date",
expiry_date AS "Expiry"
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Certification notes

```dataview
TABLE target_month, course_completion, lessons_completed, labs_completed, exam_booking_status, exam_date, pass_status, award_date, expiry_date
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Readiness scorecards

```dataview
TABLE certification, coverage_score, lab_score, mock_exam_score, troubleshooting_score, time_management_score, no_notes_score, readiness_status
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Open certification tasks

```tasks
not done
path includes Kubestronaut/02 - Certifications
sort by due
```

## Mock examination records

```dataview
TABLE date, certification, provider, exam_name, score, passing_score, target_score, result, actual_minutes, time_limit_minutes, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam"
SORT date DESC
```

## Readiness gates

```dataview
TABLE certification, readiness_status, coverage_score, lab_score, mock_exam_score, troubleshooting_score, time_management_score, no_notes_score, practice_exams_completed, exam_booking_status
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Booking decisions due

```tasks
not done
path includes Kubestronaut/02 - Certifications
tags include #exam-readiness
sort by due
```

## Mock exam follow-up tasks

```tasks
not done
path includes Kubestronaut/06 - Mock Exams
sort by due
```

## Exam readiness links

- [[Kubestronaut Operating Manual]]
- [[Kubestronaut System Map]]
- [[Mock Exam Dashboard]]
- [[Exam Readiness Protocol]]
- [[Exam Booking Decision Checklist]]
- [[Weak Area Register]]

> [!important]
> Readiness scores are learning indicators only. They are not guaranteed predictions of passing an exam.
> Never infer exam success from course completion or mock exam scores.
