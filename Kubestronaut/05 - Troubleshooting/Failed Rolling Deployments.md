---
type: kubestronaut-incident
component: Deployment
failure_type: Failed rolling deployments
severity: high
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-29
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl rollout status
  - kubectl describe deployment
  - kubectl get rs
  - kubectl rollout undo
related_errors:
  - ProgressDeadlineExceeded
  - unavailable replicas
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Deployment rollout does not complete.
- New ReplicaSet fails to become available.
- Old version may remain partially active.

## Impact

- Release is delayed or causes service degradation.

## Diagnostic commands

```bash
kubectl rollout status deployment/<deployment-name> -n <namespace>
kubectl describe deployment <deployment-name> -n <namespace>
kubectl get rs -n <namespace>
kubectl get pods -n <namespace> -l app=<label>
kubectl rollout history deployment/<deployment-name> -n <namespace>
```

## Investigation process

1. Check rollout status and Deployment conditions.
2. Inspect new ReplicaSet and Pods.
3. Determine whether failures are readiness, image, config, scheduling, or quota related.
4. Decide whether to fix forward or roll back.

## Common root causes

- Readiness probe failure
- Bad image or config
- Insufficient resources
- Quota exceeded
- Selector/label mistakes

## Resolution patterns

- Fix manifest or application issue.
- Roll back if production impact is high.
- Adjust rollout strategy only when understood.

## Tasks

- [ ] Reproduce or simulate failed rolling deployment #kubestronaut #troubleshooting 📅 2026-10-29
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-29
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-29

## Lessons learned

- 