---
type: kubestronaut-incident
component: Pod
failure_type: ImagePullBackOff
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-16
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl describe pod
  - kubectl get events
  - kubectl get secret
related_errors:
  - ImagePullBackOff
  - ErrImagePull
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Pod cannot pull its container image.
- Status shows ErrImagePull or ImagePullBackOff.

## Impact

- Workload cannot start.
- Deployment availability may drop.

## Diagnostic commands

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl get events -n <namespace> --sort-by=.lastTimestamp
kubectl get secret -n <namespace>
kubectl get serviceaccount <service-account> -n <namespace> -o yaml
```

## Investigation process

1. Read Pod events for image pull error details.
2. Verify image name, registry, and tag.
3. Check imagePullSecrets and service account references.
4. Confirm registry authentication and network access.

## Common root causes

- Wrong image name or tag
- Private registry authentication missing
- Registry unavailable
- Image architecture mismatch
- Rate limiting

## Resolution patterns

- Correct image reference.
- Add or fix imagePullSecret.
- Confirm registry access.
- Use a known-good tag.

## Tasks

- [ ] Reproduce or simulate ImagePullBackOff #kubestronaut #troubleshooting 📅 2026-10-16
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-16
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-16

## Lessons learned

- 