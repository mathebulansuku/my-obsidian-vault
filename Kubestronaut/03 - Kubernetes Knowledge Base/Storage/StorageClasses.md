---
type: kubestronaut-knowledge
area: Storage
certifications:
  - CKA
  - CKAD
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - storage
  - storageclass
---

## Simple explanation

A StorageClass defines how dynamic storage should be provisioned.

## Technical definition

A StorageClass describes a storage provisioner and parameters used to dynamically create PersistentVolumes for PersistentVolumeClaims.

## Commands used to inspect it

```bash
kubectl get storageclass
kubectl describe storageclass <name>
```

## Related Kubernetes concepts

- [[PersistentVolumes]]
- [[PersistentVolumeClaims]]
