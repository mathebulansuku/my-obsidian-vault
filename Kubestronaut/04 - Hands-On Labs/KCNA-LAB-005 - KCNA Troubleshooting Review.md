---
type: kubestronaut-lab
lab_id: KCNA-LAB-005
certification: KCNA
topic: KCNA Troubleshooting Review
difficulty: intermediate
estimated_minutes: 60
actual_minutes: 0
status: not-started
repeat_required: false
repeat_reason:
source_daily_note: [[2026-10-30 - Kubernetes - KCNA Review and Weak Areas]]
commands_practiced:
  - kubectl get events
  - kubectl describe pod
  - kubectl logs
  - kubectl rollout status
  - kubectl auth can-i
failure_modes:
  - CrashLoopBackOff
  - Pending Pods
  - Service connectivity failures
  - Failed rolling deployments
next_review: 2026-11-01
completed_date:
tags:
  - kubestronaut
  - kubernetes
  - lab
  - kcna
  - review
---

## Lab overview

Run a mixed troubleshooting review across common KCNA-level Kubernetes failure modes.

## Objectives

- Practice first-response inspection commands.
- Identify weak troubleshooting areas.
- Link failures to incident notes.

## Commands

```bash
kubectl get events -A --sort-by=.lastTimestamp
kubectl get pods -A
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl rollout status deployment/<deployment-name> -n <namespace>
kubectl auth can-i get pods -n <namespace>
```

## Expected results

- A repeatable first-response checklist is created.
- Weak areas are documented for spaced repetition.

## Actual results

- 

## Timing

- Estimated minutes: 60
- Actual minutes: 0

## Failure modes encountered

- 

## Related troubleshooting

- [[CrashLoopBackOff]]
- [[Pending Pods]]
- [[Service Connectivity Failures]]
- [[Failed Rolling Deployments]]

## Tasks

- [ ] Complete KCNA troubleshooting review lab #kubestronaut #lab #kcna #review 📅 2026-10-30
- [ ] Identify top three troubleshooting weak areas #kubestronaut #review 📅 2026-10-30
- [ ] Update actual_minutes after lab #kubestronaut #lab 📅 2026-10-30

## Lessons learned

- 