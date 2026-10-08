---
type: kubestronaut-dashboard
created: 2026-10-08
last_updated: 2026-10-08
tags:
  - kubestronaut
  - active-recall
  - spaced-repetition
  - review
---

## Active recall dashboard

Use this dashboard for metadata-driven review queues across daily learning notes, labs, troubleshooting drills, and weak areas.

> [!info] Flashcards
> Use the Spaced Repetition plugin's native review command for plugin-managed flashcards. This dashboard tracks note-level review metadata and review tasks.

## Start here

1. Review items due today.
2. Prioritize confidence below 3.
3. Do one lab or troubleshooting drill if the weak area is practical.
4. Update confidence and next_review only after a real review attempt.

## Daily reviews due

```dataview
TABLE date, certification, topic, confidence, next_review, status
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND next_review AND next_review <= date(today)
SORT next_review ASC, confidence ASC
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

## Low confidence daily topics

```dataview
TABLE date, certification, topic, confidence, next_review
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND confidence < 3
SORT confidence ASC, next_review ASC
```

## Low confidence troubleshooting drills

```dataview
TABLE component, failure_type, severity, confidence, next_review
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND confidence < 4
SORT confidence ASC, next_review ASC
```

## Labs needing repetition or completion

```dataview
TABLE lab_id, certification, topic, difficulty, status, repeat_required, repeat_reason, next_review
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND (status != "completed" OR repeat_required = true)
SORT next_review ASC, certification ASC
```

## Review tasks due

```tasks
not done
path includes Kubestronaut
tags include #review
due before tomorrow
sort by due
```

## Flashcard sources

```dataview
TABLE certification, status, created
FROM "Kubestronaut/07 - Active Recall"
WHERE type = "kubestronaut-flashcards"
SORT created DESC
```

## Weak area register

- [[Weak Area Register]]
- [[Review Protocol]]
- [[Spaced Repetition Test Cards]]

## Review intervals

| Confidence after review | Next interval |
|---:|---:|
| 0–1 | 1 day |
| 2 | 3 days |
| 3 | 7 days |
| 4 | 14 days |
| 5 | 30 days |

## Operating rules

- Do not update confidence unless recall or practice was actually attempted.
- Do not mark labs completed unless hands-on work was actually completed.
- Do not mark troubleshooting drills mastered unless you can identify symptoms, first commands, likely root causes, and resolution pattern without notes.
- Do not store secrets in flashcards or review notes.
