---
type: kubestronaut-lab
lab_id: KCNA-LAB-002
certification: KCNA
topic: Pods and Logs
difficulty: beginner
estimated_minutes: 45
actual_minutes: 0
status: not-started
repeat_required: false
repeat_reason:
source_daily_note: [[2026-10-11 - Kubernetes - Pods]]
commands_practiced:
  - kubectl get pods
  - kubectl describe pod
  - kubectl logs
  - kubectl exec
failure_modes:
  - CrashLoopBackOff
  - ImagePullBackOff
  - OOMKilled
next_review: 2026-10-18
completed_date:
tags:
  - kubestronaut
  - kubernetes
  - lab
  - kcna
---

## Lab overview

Practice inspecting Pods, reading logs, and distinguishing common Pod failure states.

## Objectives

- Inspect Pod status and events.
- Read container logs.
- Connect common Pod failures to diagnostic commands.

## Commands

```bash
kubectl get pods -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl exec -it <pod-name> -n <namespace> -- sh
```

## Expected results

- Pod phase and container state are explainable.
- Events and logs are used before guessing.

## Actual results

- 

## Timing

- Estimated minutes: 45
- Actual minutes: 0

## Failure modes encountered

- 

## Related troubleshooting

- [[CrashLoopBackOff]]
- [[ImagePullBackOff]]
- [[OOMKilled]]

## Tasks

- [ ] Complete Pods and logs lab #kubestronaut #lab #kcna 📅 2026-10-11
- [ ] Record diagnostic command findings #kubestronaut #lab 📅 2026-10-11
- [ ] Update actual_minutes after lab #kubestronaut #lab 📅 2026-10-11

## Lessons learned

- 