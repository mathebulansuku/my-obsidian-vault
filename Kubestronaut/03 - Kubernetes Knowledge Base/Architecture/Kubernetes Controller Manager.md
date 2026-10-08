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
  - controllers
---

## Simple explanation

The controller manager runs controllers that keep the cluster moving toward desired state.

## Technical definition

The Kubernetes controller manager runs control loops that watch API objects and reconcile actual state with desired state.

## Examples

- Deployment controller
- ReplicaSet controller
- Node controller
- Job controller

## Related Kubernetes concepts

- [[Deployments]]
- [[ReplicaSets]]
- [[Node NotReady]]
- [[Kubernetes API Server]]
