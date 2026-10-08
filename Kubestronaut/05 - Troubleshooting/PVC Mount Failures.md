---
type: kubestronaut-incident
component: Storage
failure_type: PVC mount failures
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-25
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl get pvc
  - kubectl describe pvc
  - kubectl describe pod
related_errors:
  - FailedMount
  - Pending PVC
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Pod is stuck creating or pending because volume cannot mount.
- Events show FailedMount or PVC binding problems.

## Impact

- Stateful workload cannot start.

## Diagnostic commands

```bash
kubectl get pvc -n <namespace>
kubectl describe pvc <pvc-name> -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl get storageclass
kubectl get pv
```

## Investigation process

1. Check Pod events for mount errors.
2. Verify PVC status and storage class.
3. Confirm PV availability and access mode compatibility.
4. Check CSI/storage provider events if available.

## Common root causes

- No matching PV
- Missing or wrong StorageClass
- Access mode mismatch
- CSI driver issue
- Zone or topology mismatch

## Resolution patterns

- Fix StorageClass or PVC request.
- Provision compatible volume.
- Correct access modes.
- Repair storage driver or topology issue.

## Tasks

- [ ] Reproduce or simulate PVC mount failure #kubestronaut #troubleshooting 📅 2026-10-25
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-25
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-25

## Lessons learned

- 