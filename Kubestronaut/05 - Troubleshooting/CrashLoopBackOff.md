---
type: kubestronaut-incident
component: Pod
failure_type: CrashLoopBackOff
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-15
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl get pods
  - kubectl describe pod
  - kubectl logs
  - kubectl logs --previous
related_errors:
  - CrashLoopBackOff
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Pod repeatedly starts and crashes.
- Restart count increases over time.
- Pod status shows CrashLoopBackOff.

## Impact

- Application is unavailable or unstable.
- Deployment rollout may stall.

## Diagnostic commands

```bash
kubectl get pods -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl get events -n <namespace> --sort-by=.lastTimestamp
```

## Investigation process

1. Confirm the affected namespace and Pod.
2. Check current and previous container logs.
3. Inspect events, probes, command, args, config, and secrets.
4. Identify whether the crash is application, config, dependency, or resource related.

## Common root causes

- Bad application configuration
- Missing environment variable
- Failed startup dependency
- Invalid command or args
- Liveness probe too aggressive
- Permission or filesystem issue

## Resolution patterns

- Fix app configuration or secret reference.
- Adjust startup/liveness probes.
- Correct command or args.
- Roll forward with a corrected image.

## Tasks

- [ ] Reproduce or simulate CrashLoopBackOff #kubestronaut #troubleshooting 📅 2026-10-15
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-15
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-15

## Lessons learned

- 