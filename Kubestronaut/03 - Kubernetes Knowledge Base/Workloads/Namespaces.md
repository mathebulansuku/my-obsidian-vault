---
type: kubestronaut-knowledge
area: Workloads
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
  - namespaces
---

## Simple explanation

A Namespace is a way to divide cluster resources into logical groups.

## Technical definition

A Namespace scopes names for many Kubernetes objects and helps organize resources, access control, and quotas.

## Why this exists

Namespaces help teams separate environments, applications, or tenants inside one cluster.

## Commands used to inspect it

```bash
kubectl get namespaces
kubectl get all -n <namespace>
kubectl config set-context --current --namespace=<namespace>
```

## Security considerations

Namespaces are organizational boundaries, not full security boundaries by themselves. Use RBAC, NetworkPolicies, and quotas where needed.

## Related Kubernetes concepts

- [[RBAC]]
- [[ServiceAccounts]]
- [[Network Policies]]
