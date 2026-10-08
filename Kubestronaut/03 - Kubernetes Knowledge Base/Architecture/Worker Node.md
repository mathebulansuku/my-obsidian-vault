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
  - nodes
---

## Simple explanation

A worker node is a machine that runs application Pods.

## Technical definition

A worker node runs kubelet, a container runtime, networking components, and workload Pods assigned by the scheduler.

## Commands used to inspect it

```bash
kubectl get nodes -o wide
kubectl describe node <node-name>
kubectl top nodes
```

## Common failures

- [[Node NotReady]]
- Resource pressure
- Runtime problems
- CNI problems

## Related Kubernetes concepts

- [[Kubelet]]
- [[Container Runtime]]
- [[Pods]]
