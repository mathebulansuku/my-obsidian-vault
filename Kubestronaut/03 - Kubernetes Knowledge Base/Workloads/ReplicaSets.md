---
type: kubestronaut-knowledge
area: Workloads
certifications:
  - KCNA
  - CKA
  - CKAD
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - replicasets
  - workloads
---

## Simple explanation

A ReplicaSet keeps a specified number of matching Pods running.

## Technical definition

A ReplicaSet is a Kubernetes controller that uses a selector to identify Pods and maintain a desired replica count.

## Why this exists

ReplicaSets provide self-healing for replicated Pods, but they are usually managed by Deployments rather than edited directly.

## Commands used to inspect it

```bash
kubectl get rs -A
kubectl describe rs <replicaset-name> -n <namespace>
kubectl get pods -n <namespace> --show-labels
```

## Common failures

- Selector mismatch
- Insufficient resources
- Broken Pod template

## Related Kubernetes concepts

- [[Deployments]]
- [[Pods]]
- [[Labels and Selectors]]

## Active recall questions

1. What does a ReplicaSet use to decide which Pods it owns?
2. Why do you usually manage ReplicaSets through Deployments?
3. What happens when a matching Pod is deleted?
