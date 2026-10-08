---
type: kubestronaut-dashboard
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - maintenance
  - dashboard
operating_manual: "[[Kubestronaut Operating Manual]]"
integration_checklist: "[[Final Integration Checklist]]"
weekly_routine: "[[Weekly Maintenance Routine]]"
---

## Maintenance dashboard

Use this dashboard once per week to keep the Kubestronaut vault clean, useful, and evidence-based.

## Stale daily notes

```dataview
TABLE date, certification, topic, status, confidence, next_review
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily" AND status != "completed" AND date < date(today)
SORT date ASC
```

## Low-confidence knowledge notes

```dataview
TABLE area, certifications, status, confidence, last_reviewed
FROM "Kubestronaut/03 - Kubernetes Knowledge Base"
WHERE type = "kubestronaut-knowledge" AND confidence < 3
SORT area ASC, file.name ASC
```

## Draft knowledge notes

```dataview
TABLE area, certifications, confidence, last_reviewed
FROM "Kubestronaut/03 - Kubernetes Knowledge Base"
WHERE type = "kubestronaut-knowledge" AND status != "complete"
SORT area ASC, file.name ASC
```

## Labs needing cleanup

```dataview
TABLE lab_id, certification, topic, status, repeat_required, actual_minutes, next_review
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND (status != "completed" OR repeat_required = true)
SORT certification ASC, lab_id ASC
```

## Troubleshooting drills needing review

```dataview
TABLE component, failure_type, status, confidence, next_review
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND (status != "mastered" OR confidence < 4)
SORT confidence ASC
```

## Mock exam follow-up not completed

```dataview
TABLE date, certification, exam_name, result, score, follow_up_completed
FROM "Kubestronaut/06 - Mock Exams"
WHERE type = "kubestronaut-mock-exam" AND follow_up_completed = false
SORT date ASC
```

## Certification trackers needing review

```dataview
TABLE certification, status, readiness_status, booking_decision, last_reviewed, target_date
FROM "Kubestronaut/02 - Certifications"
WHERE type = "kubestronaut-certification"
SORT target_date ASC
```

## Maintenance tasks

```tasks
not done
path includes Kubestronaut
(tags include #maintenance) OR (tags include #cleanup) OR (tags include #hygiene)
sort by due
```

## Integration links

- [[Start Here - Kubestronaut]]
- [[Kubestronaut Operating Manual]]
- [[Kubestronaut System Map]]
- [[Final Integration Checklist]]
- [[Kubestronaut Build Status]]

## Weekly hygiene checklist

- [ ] Process overdue daily notes #kubestronaut #maintenance #hygiene
- [ ] Review low-confidence knowledge notes #kubestronaut #maintenance #review
- [ ] Update weak areas from labs, troubleshooting, and mocks #kubestronaut #maintenance #review
- [ ] Check incomplete mock follow-ups #kubestronaut #maintenance #mock-exam
- [ ] Update current certification tracker #kubestronaut #maintenance #certification
- [ ] Check dashboards for empty or broken assumptions #kubestronaut #maintenance #cleanup

## Monthly hygiene checklist

- [ ] Create monthly review note #kubestronaut #maintenance #monthly-review
- [ ] Summarize study hours, completed labs, and mock performance #kubestronaut #maintenance
- [ ] Promote useful daily notes into knowledge notes #kubestronaut #maintenance #knowledge-base
- [ ] Archive or close obsolete tasks #kubestronaut #maintenance #cleanup
- [ ] Re-check official exam objective sources for active certification #kubestronaut #maintenance #certification

## Safety checks

- Never store credentials, kubeconfigs, tokens, private keys, or passwords.
- Do not mark official exam pass status without verified results.
- Do not inflate readiness scores without evidence.
