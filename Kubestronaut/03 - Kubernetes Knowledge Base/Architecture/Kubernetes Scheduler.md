---
type: kubestronaut-knowledge
area: Architecture
certifications:
  - KCNA
  - CKA
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - scheduler
---

## Simple explanation

The scheduler chooses which node should run a Pod.

## Technical definition

The Kubernetes scheduler watches for unscheduled Pods and assigns them to suitable nodes based on resource requirements, constraints, taints, tolerations, affinity, and other scheduling rules.

## Common failures

- [[Pending Pods]]
- Insufficient CPU or memory
- Node selector mismatch
- Untolerated taints

## Commands used to inspect it

```bash
kubectl describe pod <pod-name> -n <namespace>
kubectl get nodes
kubectl describe node <node-name>
```

## Related Kubernetes concepts

- [[Pods]]
- [[Worker Node]]
- [[Pending Pods]]
