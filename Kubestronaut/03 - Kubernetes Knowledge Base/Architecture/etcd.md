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
  - etcd
---

## Simple explanation

etcd is the database where Kubernetes stores cluster state.

## Technical definition

etcd is a strongly consistent key-value store used by Kubernetes to persist API objects and cluster metadata.

## Why this exists

Kubernetes needs a reliable source of truth for desired and observed cluster state.

## Common responsibilities

- Store objects such as Pods, Deployments, Services, Secrets, and ConfigMaps.
- Support control plane reconciliation.
- Enable backup and recovery strategies.

## Security considerations

- Protect etcd access.
- Encrypt sensitive data at rest where required.
- Back up etcd for production clusters.

## Related Kubernetes concepts

- [[Kubernetes API Server]]
- [[Control Plane]]
- [[Secrets]]
