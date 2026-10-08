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
  - kubelet
---

## Simple explanation

The kubelet is the node agent that makes Pods run on a worker node.

## Technical definition

The kubelet receives PodSpecs assigned to its node, communicates with the container runtime, monitors containers, and reports Pod and node status to the API server.

## Commands used to inspect it

```bash
kubectl describe node <node-name>
kubectl describe pod <pod-name> -n <namespace>
```

## Common failures

- [[Node NotReady]]
- Runtime unavailable
- Pod startup failures

## Related Kubernetes concepts

- [[Worker Node]]
- [[Container Runtime]]
- [[Pods]]
