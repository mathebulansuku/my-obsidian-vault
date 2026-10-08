---
type: kubestronaut-dashboard
created: 2026-10-08
tags:
  - kubestronaut
  - labs
  - dashboard
---

## Lab dashboard

## Pending labs

```dataview
TABLE lab_id, certification, topic, difficulty, estimated_minutes, actual_minutes, status, source_daily_note
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND status != "completed"
SORT certification ASC, lab_id ASC
```

## Completed labs

```dataview
TABLE lab_id, certification, topic, difficulty, estimated_minutes, actual_minutes, completed_date
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND status = "completed"
SORT completed_date DESC
```

## Labs requiring repetition

```dataview
TABLE lab_id, certification, topic, difficulty, repeat_reason, next_review
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab" AND repeat_required = true
SORT certification ASC, lab_id ASC
```

## Command practice index

```dataview
TABLE lab_id, certification, topic, commands_practiced, failure_modes, status
FROM "Kubestronaut/04 - Hands-On Labs"
WHERE type = "kubestronaut-lab"
SORT certification ASC, lab_id ASC
```

## Open lab tasks

```tasks
not done
path includes Kubestronaut/04 - Hands-On Labs
sort by due
```

## Knowledge base links

- [[Knowledge Base Dashboard]]
- [[kubectl Command Reference]]
- [[Kubernetes Workloads Map]]
- [[Kubernetes Networking Map]]
- [[Kubernetes Storage Map]]
- [[Kubernetes Security Map]]

## Safety rule

Never store AWS credentials, kubeconfig credentials, tokens, private keys, or passwords in lab notes.
