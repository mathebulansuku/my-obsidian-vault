---
type: kubestronaut-knowledge
area: Security
certifications:
  - KCNA
  - CKA
  - CKAD
  - CKS
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - serviceaccounts
  - security
---

## Simple explanation

A ServiceAccount gives an identity to a workload running in Kubernetes.

## Technical definition

A ServiceAccount is a namespaced identity used by Pods to authenticate to the Kubernetes API.

## Commands used to inspect it

```bash
kubectl get serviceaccount -n <namespace>
kubectl describe serviceaccount <name> -n <namespace>
kubectl auth can-i get pods --as system:serviceaccount:<namespace>:<serviceaccount> -n <namespace>
```

## Related Kubernetes concepts

- [[RBAC]]
- [[Pods]]
- [[Secrets]]
