---
type: kubestronaut-knowledge-map
area: Architecture
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
  - architecture
  - knowledge-map
---

## Architecture map

This map connects the main Kubernetes architecture components.

## Cluster structure

- [[Kubernetes Cluster]]
- [[Control Plane]]
- [[Worker Node]]
- [[Kubernetes API Server]]
- [[etcd]]
- [[Kubernetes Scheduler]]
- [[Kubernetes Controller Manager]]
- [[Kubelet]]
- [[Container Runtime]]

## Object model

- [[Pods]]
- [[Deployments]]
- [[ReplicaSets]]
- [[Services]]
- [[Namespaces]]
- [[ConfigMaps]]
- [[Secrets]]

## Reconciliation model

Kubernetes works by comparing desired state with actual state and continuously reconciling differences.

## Troubleshooting links

- [[Pending Pods]]
- [[Node NotReady]]
- [[CrashLoopBackOff]]
- [[ImagePullBackOff]]

## Exam relevance

- KCNA: conceptual architecture and cloud native foundations.
- CKA: cluster administration, control plane behavior, scheduling, troubleshooting.
- CKAD: workload behavior and application deployment.
- CKS: secure configuration and control plane hardening.
