---
type: kubestronaut-knowledge
area: Security
certifications:
  - KCSA
  - CKS
  - CKA
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - admission-control
  - security
---

## Simple explanation

Admission control checks or changes API requests before they are persisted.

## Technical definition

Admission controllers are plugins or webhooks that validate or mutate Kubernetes API requests after authentication and authorization but before storage in etcd.

## Common failures

- [[Admission Policy Failures]]
- Policy rejects privileged workload
- Required labels or fields missing

## Related Kubernetes concepts

- [[Kubernetes API Server]]
- [[Security Contexts]]
- [[RBAC]]
