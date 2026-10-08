---
type: kubestronaut-knowledge
area: Storage
certifications:
  - KCNA
  - CKA
  - CKAD
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - storage
  - pvc
---

## Simple explanation

A PersistentVolumeClaim is a workload's request for persistent storage.

## Technical definition

A PVC requests storage capacity, access modes, and optionally a StorageClass. Kubernetes binds it to a suitable PersistentVolume.

## Commands used to inspect it

```bash
kubectl get pvc -A
kubectl describe pvc <claim-name> -n <namespace>
kubectl get pv
```

## Common failures

- [[PVC Mount Failures]]
- No matching PersistentVolume
- StorageClass not found
- Access mode mismatch

## Related Kubernetes concepts

- [[PersistentVolumes]]
- [[StorageClasses]]
- [[Pods]]
