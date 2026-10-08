---
type: kubestronaut-knowledge
area: Architecture
certifications:
  - KCNA
  - CKA
  - CKS
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - api-server
---

## Simple explanation

The API server is the front door to Kubernetes.

## Technical definition

The Kubernetes API server validates requests, handles authentication and authorization, runs admission control, and persists cluster state through etcd.

## Why this exists

All Kubernetes actions need a consistent API entry point.

## Commands used to inspect it

```bash
kubectl cluster-info
kubectl api-resources
kubectl get --raw /version
```

## Common failures

- Authentication failure
- Authorization failure
- Admission policy rejection
- API server unavailable

## Related Kubernetes concepts

- [[RBAC]]
- [[Admission Control]]
- [[etcd]]
