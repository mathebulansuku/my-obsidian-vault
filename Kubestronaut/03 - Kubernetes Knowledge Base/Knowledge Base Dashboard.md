---
type: kubestronaut-dashboard
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - kubernetes
  - knowledge-base
  - dashboard
---

## Knowledge base dashboard

Use this as the main map for Kubernetes concepts, command references, and exam-linked notes.

## Knowledge maps

- [[Kubernetes Architecture Map]]
- [[Kubernetes Workloads Map]]
- [[Kubernetes Networking Map]]
- [[Kubernetes Storage Map]]
- [[Kubernetes Security Map]]
- [[Kubernetes Observability Map]]
- [[kubectl Command Reference]]

## All knowledge notes

```dataview
TABLE area, certifications, status, confidence, last_reviewed
FROM "Kubestronaut/03 - Kubernetes Knowledge Base"
WHERE type = "kubestronaut-knowledge"
SORT area ASC, file.name ASC
```

## Draft or low-confidence notes

```dataview
TABLE area, certifications, status, confidence, last_reviewed
FROM "Kubestronaut/03 - Kubernetes Knowledge Base"
WHERE type = "kubestronaut-knowledge" AND (status != "complete" OR confidence < 3)
SORT area ASC, file.name ASC
```

## Knowledge review tasks

```tasks
not done
path includes Kubestronaut/03 - Kubernetes Knowledge Base
sort by due
```

## Linked learning notes

```dataview
TABLE date, certification, topic, status, confidence
FROM "Kubestronaut/01 - Daily Learning"
WHERE type = "kubestronaut-daily"
SORT date ASC
```

## Operating rules

- Create concept notes when a topic appears repeatedly in lessons, labs, troubleshooting, or mock exams.
- Prefer small focused notes over huge reference pages.
- Link concepts to labs, troubleshooting notes, weak areas, and certification trackers.
- Keep commands safe: never store real tokens, kubeconfigs, passwords, or private keys.
