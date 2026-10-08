---
type: kubestronaut-dashboard
created: 2026-10-08
programme_start: 2026-10-09
programme_end: 2027-10-08
timezone: Africa/Johannesburg
study_window: 07:00-09:00
status: active
certification: Kubestronaut
tags:
  - kubestronaut
  - kubernetes
  - dashboard
operating_manual: "[[Kubestronaut Operating Manual]]"
system_map: "[[Kubestronaut System Map]]"
start_here: "[[Start Here - Kubestronaut]]"
build_status: "[[Kubestronaut Build Status]]"
---

## Programme overview

> [!info] Daily study window
> 07:00–09:00 SAST, Africa/Johannesburg.

| Field | Value |
|---|---|
| Programme start date | 2026-10-09 |
| Target completion date | 2027-10-08 |
| Current programme day | Not started until 2026-10-09 |
| Total scheduled study days | Pending full calendar generation |
| Completed study sessions | 0 |
| Total study hours | 0 |
| Current certification | KCNA |
| Current learning topic | Cloud native and Kubernetes foundations |
| Next scheduled session | [[2026-10-09 - Kubernetes - Cloud Native Foundations]] |
| Next certification milestone | KCNA target: November 2026 |

## Quick navigation

- [[Start Here - Kubestronaut]]
- [[Kubestronaut Operating Manual]]
- [[Kubestronaut System Map]]
- [[Final Integration Checklist]]
- [[Kubestronaut Build Status]]
- [[Learning Roadmap]]
- [[Knowledge Base Dashboard]]
- [[Kubernetes Architecture Map]]
- [[kubectl Command Reference]]
- [[Certification Dashboard]]
- [[Mock Exam Dashboard]]
- [[Exam Readiness Protocol]]
- [[Exam Booking Decision Checklist]]
- [[Learning Analytics]]
- [[KCNA Tracker]]
- [[CKA Tracker]]
- [[CKAD Tracker]]
- [[KCSA Tracker]]
- [[CKS Tracker]]
- [[Lab Dashboard]]
- [[Troubleshooting Dashboard]]
- [[Active Recall Dashboard]]
- [[Weak Area Register]]
- [[Review Protocol]]
- [[Revision Dashboard]]
- [[Task Dashboard]]
- [[Maintenance Dashboard]]
- [[Weekly Review Dashboard]]
- [[Weekly Maintenance Routine]]
- [[Monthly Review Dashboard]]
- [[Plugin Integration Status]]

## Programme metrics

```dataview
TABLE
length(rows) AS "Generated study notes",
length(filter(rows, (r) => r.status = "completed" AND r.lesson_completed = true AND r.lab_completed = true AND r.recall_completed = true)) AS "Completed sessions",
sum(map(rows, (r) => default(r.actual_minutes, default(r.study_minutes, 0)))) / 60 AS "Actual study hours"
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
GROUP BY true
```

## Today

```dataview
TABLE date, certification, topic, status, planned_minutes, actual_minutes, study_minutes, lesson_completed, lab_completed, recall_completed, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND date = date(today)
SORT date ASC
```

If Dataview is unavailable, open the relevant note in [[Learning Roadmap]] manually.

## Next sessions

```dataview
TABLE date, certification, topic, status, planned_minutes, actual_minutes, study_minutes, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND date >= date(today) AND status != "completed"
SORT date ASC
LIMIT 7
```

## Certification targets

| Certification | Target | Tracker |
|---|---:|---|
| KCNA | November 2026 | [[KCNA Tracker]] |
| CKA | January 2027 | [[CKA Tracker]] |
| CKAD | March 2027 | [[CKAD Tracker]] |
| KCSA | April 2027 | [[KCSA Tracker]] |
| CKS | September 2027 | [[CKS Tracker]] |

## Today's tasks

```tasks
not done
path includes Kubestronaut
due today
sort by path
```

## Upcoming tasks

```tasks
not done
path includes Kubestronaut
due after today
due before in 8 days
sort by due
```

## Open learning tasks

```dataview
TASK
FROM "Kubestronaut"
WHERE !completed
GROUP BY file.link
```

See also: [[Task Dashboard]]

## Operating manual

- Start with [[Start Here - Kubestronaut]] when opening the vault.
- Use [[Kubestronaut Operating Manual]] for the daily, weekly, monthly, lab, troubleshooting, mock exam, and certification workflows.
- Use [[Kubestronaut System Map]] to understand how the vault fits together.
- Use [[Final Integration Checklist]] after major changes or monthly cleanup.

## Operating rules

- Do not store kubeconfig files, AWS credentials, tokens, passwords, or private keys in Obsidian.
- Mark a session completed only after theory, lab attempt, notes, and active recall are done.
- Exam exclusion days are excused and should not be counted as missed study sessions.
- Certification pass status must be based on verified exam results, not course progress.
