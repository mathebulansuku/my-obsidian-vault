---
type: kubestronaut-dashboard
created: 2026-10-08
tags:
  - kubestronaut
  - troubleshooting
  - dashboard
---

## Troubleshooting dashboard

## Incident database

```dataview
TABLE component, failure_type, severity, status, confidence, last_reviewed, next_review
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident"
SORT component ASC, failure_type ASC
```

## Open troubleshooting drills

```dataview
TABLE component, failure_type, status, confidence, diagnostic_commands, source_lab
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND status != "mastered"
SORT confidence ASC
```

## Reviews due

```dataview
TABLE component, failure_type, confidence, next_review
FROM "Kubestronaut/05 - Troubleshooting"
WHERE type = "kubestronaut-incident" AND next_review <= date(today)
SORT next_review ASC
```

## Open troubleshooting tasks

```tasks
not done
path includes Kubestronaut/05 - Troubleshooting
sort by due
```

## Knowledge base links

- [[Knowledge Base Dashboard]]
- [[kubectl Command Reference]]
- [[Kubernetes Architecture Map]]
- [[Kubernetes Workloads Map]]
- [[Kubernetes Networking Map]]
- [[Kubernetes Storage Map]]
- [[Kubernetes Security Map]]
- [[Kubernetes Observability Map]]

## Initial incident backlog

- CrashLoopBackOff
- ImagePullBackOff
- Pending Pods
- OOMKilled
- Node NotReady
- DNS resolution failures
- Service connectivity failures
- PVC mount failures
- RBAC permission failures
- Admission policy failures
- Failed rolling deployments
