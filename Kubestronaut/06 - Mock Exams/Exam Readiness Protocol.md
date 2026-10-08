---
type: kubestronaut-exam-readiness-protocol
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - exam-readiness
  - mock-exam
  - certification
---

## Purpose

This protocol defines when a certification is ready to book, when to delay, and how mock exams feed weak-area review.

## Readiness scores

Use 0–5 scores in certification trackers.

| Score | Meaning |
|---:|---|
| 0 | Not assessed |
| 1 | Major gaps |
| 2 | Some coverage but unreliable |
| 3 | Basic readiness with known gaps |
| 4 | Strong readiness with manageable gaps |
| 5 | Exam-ready under realistic conditions |

## Readiness gates

A certification is ready to book only when all evidence-based gates are true:

- Official objectives have been checked recently.
- Course/lab coverage is sufficient for the exam scope.
- At least one full mock/practice assessment has been completed.
- Mock performance is at or above the chosen safety threshold.
- Time management is acceptable.
- Weak areas have follow-up tasks.
- Practical/lab tasks can be completed without step-by-step notes where applicable.
- No blocker exists, such as CKS requiring active CKA certification.

## Suggested booking thresholds

| Certification type | Suggested threshold |
|---|---|
| KCNA/KCSA knowledge exams | Two practice attempts at or above target score, or one very strong attempt plus low weak-area count |
| CKA/CKAD/CKS practical exams | Multiple timed hands-on mocks at or above target score with strong time management |

## Readiness status values

Use these values in certification trackers:

- not-assessed
- building-foundation
- needs-review
- mock-ready
- booking-ready
- booked
- passed
- delayed
- blocked-by-prerequisite

## Mock exam follow-up workflow

1. Create a new mock exam note for each attempt.
2. Record score, passing score, timing, result, and weak areas.
3. Add missed concepts to [[Weak Area Register]].
4. Create review tasks from incorrect answers.
5. Update the certification tracker only after the mock exam note exists.
6. Never mark official pass status unless the official exam result exists.

## Delay criteria

Delay booking if any of these are true:

- Mock score is below passing score or below your safety threshold.
- You ran out of time or guessed heavily.
- Weak areas include high-weight exam domains.
- Labs or troubleshooting drills are incomplete for practical exams.
- You cannot explain missed concepts without notes.
- Required prerequisite is missing.
