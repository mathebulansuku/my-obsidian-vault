---
type: kubestronaut-incident
component: Scheduler
failure_type: Pending Pods
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-17
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl describe pod
  - kubectl get nodes
  - kubectl top nodes
related_errors:
  - Pending
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Pod remains in Pending state.
- No container starts.

## Impact

- Workload capacity is unavailable.
- New releases may not become ready.

## Diagnostic commands

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl get nodes
kubectl describe node <node-name>
kubectl get events -n <namespace> --sort-by=.lastTimestamp
kubectl top nodes
```

## Investigation process

1. Check scheduler events in Pod description.
2. Verify node readiness and taints.
3. Check resource requests versus allocatable capacity.
4. Review node selectors, affinity, tolerations, and PVC binding.

## Common root causes

- Insufficient CPU or memory
- Untolerated taint
- Node selector mismatch
- Affinity rules too strict
- Unbound PVC

## Resolution patterns

- Adjust requests or add capacity.
- Add correct tolerations.
- Fix selectors or affinity.
- Resolve PVC binding problem.

## Tasks

- [ ] Reproduce or simulate Pending Pod scheduling failure #kubestronaut #troubleshooting 📅 2026-10-17
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-17
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-17

## Lessons learned

- 