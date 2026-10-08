---
type: kubestronaut-knowledge
area: Security
certifications:
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
  - network-policy
  - security
---

## Simple explanation

NetworkPolicies restrict which Pods can talk to each other.

## Technical definition

A NetworkPolicy is a Kubernetes object that controls ingress and egress traffic for selected Pods, if the cluster networking plugin enforces NetworkPolicy.

## Security considerations

- NetworkPolicies require a compatible CNI plugin.
- Default allow behavior changes only when policies select Pods.
- Test policies carefully to avoid blocking required traffic.

## Related Kubernetes concepts

- [[Pods]]
- [[Namespaces]]
- [[Cluster Networking]]
- [[Kubernetes Security Map]]
