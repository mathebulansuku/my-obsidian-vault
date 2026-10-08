---
type: kubestronaut-lab
lab_id: KCNA-LAB-001
certification: KCNA
topic: Environment and Cluster Inspection
difficulty: beginner
estimated_minutes: 45
actual_minutes: 0
status: not-started
repeat_required: false
repeat_reason:
source_daily_note: [[2026-10-09 - Kubernetes - Cloud Native Foundations]]
commands_practiced:
  - kubectl version --client
  - kubectl config current-context
  - kubectl cluster-info
  - kubectl get nodes
  - kubectl get pods -A
failure_modes:
  - missing kubeconfig
  - wrong context
  - cluster unavailable
next_review: 2026-10-16
completed_date:
tags:
  - kubestronaut
  - kubernetes
  - lab
  - kcna
---

## Lab overview

Practice safe read-only cluster inspection before making any changes.

## Objectives

- Confirm kubectl is installed.
- Identify the current context.
- Inspect cluster nodes and system Pods.
- Document what each command proves.

## Commands

```bash
kubectl version --client
kubectl config current-context
kubectl cluster-info
kubectl get nodes
kubectl get pods -A
```

## Expected results

- kubectl client version is visible.
- Current context is known before running cluster commands.
- Nodes and Pods are listed if a cluster is connected.

## Actual results

- 

## Timing

- Estimated minutes: 45
- Actual minutes: 0

## Failure modes encountered

- 

## Related troubleshooting

- [[CrashLoopBackOff]]
- [[Node NotReady]]

## Tasks

- [ ] Complete environment and cluster inspection lab #kubestronaut #lab #kcna 📅 2026-10-09
- [ ] Record actual command output summary #kubestronaut #lab 📅 2026-10-09
- [ ] Update actual_minutes after lab #kubestronaut #lab 📅 2026-10-09

## Lessons learned

- 