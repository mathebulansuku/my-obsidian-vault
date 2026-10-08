---
type: kubestronaut-knowledge-map
area: Security
created: 2026-10-08
status: active
certifications:
  - KCNA
  - CKA
  - CKAD
  - KCSA
  - CKS
tags:
  - kubestronaut
  - kubernetes
  - security
  - knowledge-map
---

## Security map

Kubernetes security spans identity, authorization, workload hardening, secrets, admission control, and runtime controls.

## Core security concepts

- [[RBAC]]
- [[ServiceAccounts]]
- [[Secrets]]
- [[Security Contexts]]
- [[Admission Control]]
- [[Network Policies]]

## Troubleshooting links

- [[RBAC Permission Failures]]
- [[Admission Policy Failures]]
- [[ImagePullBackOff]]

## Lab links

- [[KCNA-LAB-004 - ConfigMaps Secrets and RBAC Checks]]

## Common commands

```bash
kubectl auth can-i <verb> <resource> -n <namespace>
kubectl auth can-i --as system:serviceaccount:<namespace>:<service-account> <verb> <resource> -n <namespace>
kubectl get role,rolebinding,clusterrole,clusterrolebinding -A
kubectl describe secret <secret-name> -n <namespace>
```

## Exam relevance

- KCNA: security fundamentals.
- KCSA: cloud native security concepts.
- CKS: deep Kubernetes security and hardening.
- CKA/CKAD: RBAC, ServiceAccounts, Secrets, and secure workload basics.
