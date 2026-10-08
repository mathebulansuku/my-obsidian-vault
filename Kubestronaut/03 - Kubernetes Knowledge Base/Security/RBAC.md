---
type: kubestronaut-knowledge
area: Security
certifications:
  - KCNA
  - CKA
  - CKAD
  - KCSA
  - CKS
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - rbac
  - security
---

## Simple explanation

RBAC controls who can do what in Kubernetes.

## Technical definition

Role-Based Access Control authorizes API actions using Roles, ClusterRoles, RoleBindings, and ClusterRoleBindings.

## Why this exists

RBAC limits access so users and workloads receive only the permissions they need.

## How it works step by step

1. A subject requests an API action.
2. Kubernetes authenticates the subject.
3. RBAC checks whether a binding grants the requested verb on the requested resource.
4. The API server allows or denies the request.

## Commands used to inspect it

```bash
kubectl auth can-i get pods -n <namespace>
kubectl auth can-i create deployments -n <namespace> --as <user-or-serviceaccount>
kubectl get role,rolebinding,clusterrole,clusterrolebinding -A
kubectl describe rolebinding <name> -n <namespace>
```

## Common failures

- [[RBAC Permission Failures]]
- Missing RoleBinding
- Binding points to wrong ServiceAccount
- Namespace mismatch

## Security considerations

- Prefer least privilege.
- Avoid cluster-admin except for tightly controlled administrators.
- Review broad verbs like `*` and broad resources like `*`.

## Related Kubernetes concepts

- [[ServiceAccounts]]
- [[Namespaces]]
- [[Secrets]]

## Active recall questions

1. What is the difference between a Role and a ClusterRole?
2. What does a RoleBinding connect?
3. How can you test whether a subject can perform an action?
