---
type: kubestronaut-knowledge-map
area: Storage
created: 2026-10-08
status: active
certifications:
  - KCNA
  - CKA
  - CKAD
  - CKS
tags:
  - kubestronaut
  - kubernetes
  - storage
  - knowledge-map
---

## Storage map

Kubernetes storage lets workloads persist data beyond the lifetime of a single container or Pod.

## Core storage concepts

- [[Volumes]]
- [[PersistentVolumes]]
- [[PersistentVolumeClaims]]
- [[StorageClasses]]

## Troubleshooting links

- [[PVC Mount Failures]]
- [[Pending Pods]]

## Common commands

```bash
kubectl get pv
kubectl get pvc -A
kubectl describe pvc <claim-name> -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl get storageclass
```

## Exam relevance

- KCNA: basic storage concepts.
- CKA: persistent volumes, claims, classes, and troubleshooting.
- CKAD: mounting volumes into applications.
- CKS: security implications of mounted data and hostPath usage.
