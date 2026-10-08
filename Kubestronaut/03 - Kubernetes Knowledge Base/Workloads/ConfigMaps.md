---
type: kubestronaut-knowledge
area: Workloads
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
  - configmaps
---

## Simple explanation

A ConfigMap stores non-sensitive configuration for Pods.

## Technical definition

A ConfigMap is a Kubernetes API object that stores key-value configuration data that can be consumed as environment variables, command arguments, or mounted files.

## Commands used to inspect it

```bash
kubectl get configmap -n <namespace>
kubectl describe configmap <name> -n <namespace>
```

## Common failures

- Missing ConfigMap
- Wrong key name
- Application does not reload changed config automatically

## Related Kubernetes concepts

- [[Pods]]
- [[Secrets]]
