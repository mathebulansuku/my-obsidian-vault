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
  - secrets
  - security
---

## Simple explanation

A Secret stores sensitive application data such as credentials or tokens.

## Technical definition

A Secret is a Kubernetes API object for storing sensitive values that can be mounted into Pods or exposed as environment variables.

## Important warning

Do not store real secret values, tokens, kubeconfigs, passwords, or private keys in Obsidian.

## Commands used to inspect it

```bash
kubectl get secret -n <namespace>
kubectl describe secret <name> -n <namespace>
```

## Security considerations

- Use least privilege for Secret access.
- Prefer external secret management where appropriate.
- Enable encryption at rest when required.
- Avoid exposing Secrets in logs or notes.

## Related Kubernetes concepts

- [[RBAC]]
- [[ServiceAccounts]]
- [[etcd]]
