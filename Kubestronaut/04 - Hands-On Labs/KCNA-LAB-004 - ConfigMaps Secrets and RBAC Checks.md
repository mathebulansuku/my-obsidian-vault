---
type: kubestronaut-lab
lab_id: KCNA-LAB-004
certification: KCNA
topic: ConfigMaps Secrets and RBAC Checks
difficulty: beginner
estimated_minutes: 45
actual_minutes: 0
status: not-started
repeat_required: false
repeat_reason:
source_daily_note: [[2026-10-19 - Kubernetes - ConfigMaps and Secrets]]
commands_practiced:
  - kubectl get configmap
  - kubectl get secret
  - kubectl describe pod
  - kubectl auth can-i
failure_modes:
  - missing config key
  - secret reference failure
  - RBAC permission failures
next_review: 2026-10-27
completed_date:
tags:
  - kubestronaut
  - kubernetes
  - lab
  - kcna
---

## Lab overview

Practice inspecting configuration references and checking permissions safely.

## Objectives

- Inspect ConfigMaps and Secrets without exposing sensitive values.
- Identify how Pods consume configuration.
- Use kubectl auth can-i for permission checks.

## Commands

```bash
kubectl get configmap -n <namespace>
kubectl get secret -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl auth can-i get pods -n <namespace>
```

## Expected results

- Configuration sources are identified.
- Permissions are checked without escalating access.

## Actual results

- 

## Timing

- Estimated minutes: 45
- Actual minutes: 0

## Failure modes encountered

- 

## Related troubleshooting

- [[RBAC Permission Failures]]

## Security reminder

Do not paste secret values, tokens, kubeconfig credentials, or private keys into this note.

## Tasks

- [ ] Complete ConfigMaps, Secrets, and RBAC checks lab #kubestronaut #lab #kcna 📅 2026-10-19
- [ ] Record safe findings without secret values #kubestronaut #lab 📅 2026-10-19
- [ ] Update actual_minutes after lab #kubestronaut #lab 📅 2026-10-19

## Lessons learned

- 