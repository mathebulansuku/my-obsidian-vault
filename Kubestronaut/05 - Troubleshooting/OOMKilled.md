---
type: kubestronaut-incident
component: Pod
failure_type: OOMKilled
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-18
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl describe pod
  - kubectl top pod
  - kubectl logs --previous
related_errors:
  - OOMKilled
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Container terminated with reason OOMKilled.
- Pod may restart repeatedly.

## Impact

- Application instability or downtime.
- Lost in-memory state.

## Diagnostic commands

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl top pod <pod-name> -n <namespace>
kubectl get pod <pod-name> -n <namespace> -o yaml
```

## Investigation process

1. Confirm terminated reason and exit code.
2. Compare memory usage with requests and limits.
3. Check logs for memory pressure patterns.
4. Identify whether the limit is too low or the app leaks memory.

## Common root causes

- Memory limit too low
- Application memory leak
- Large workload spike
- Bad JVM/runtime memory settings

## Resolution patterns

- Tune application memory usage.
- Adjust memory requests and limits.
- Add horizontal scaling if appropriate.
- Fix memory leaks.

## Tasks

- [ ] Reproduce or simulate OOMKilled #kubestronaut #troubleshooting 📅 2026-10-18
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-18
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-18

## Lessons learned

- 