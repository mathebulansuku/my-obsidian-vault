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
  - architecture
---

## Simple explanation

The control plane is the brain of a Kubernetes cluster.

## Technical definition

The control plane contains components that expose the Kubernetes API, store cluster state, schedule workloads, and reconcile resources.

## Key components

- [[Kubernetes API Server]]
- [[etcd]]
- [[Kubernetes Scheduler]]
- [[Kubernetes Controller Manager]]

## Why this exists

The control plane lets users declare desired state and lets Kubernetes continuously work toward that state.

## Commands used to inspect it

```bash
kubectl cluster-info
kubectl get pods -n kube-system
kubectl get componentstatuses
```

## Related Kubernetes concepts

- [[Kubernetes Cluster]]
- [[Worker Node]]
- [[Kubelet]]
