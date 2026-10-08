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
  - deployments
  - workloads
---

## Simple explanation

A Deployment manages replicated Pods and updates them safely over time.

## Technical definition

A Deployment is a Kubernetes controller object that manages ReplicaSets, rollout strategy, desired replicas, and Pod template changes.

## Why this exists

Deployments let teams update applications without manually creating, deleting, or replacing Pods.

## How it works step by step

1. You define a desired number of replicas and a Pod template.
2. The Deployment creates or updates a ReplicaSet.
3. The ReplicaSet maintains the required Pod count.
4. During updates, the Deployment gradually replaces old Pods with new Pods.
5. Rollout history allows rollback when needed.

## Commands used to inspect it

```bash
kubectl get deploy -A
kubectl describe deploy <deployment-name> -n <namespace>
kubectl rollout status deployment/<deployment-name> -n <namespace>
kubectl rollout history deployment/<deployment-name> -n <namespace>
kubectl rollout undo deployment/<deployment-name> -n <namespace>
```

## Common failures

- [[Failed Rolling Deployments]]
- [[ImagePullBackOff]]
- [[CrashLoopBackOff]]
- [[Pending Pods]]

## Related Kubernetes concepts

- [[Pods]]
- [[ReplicaSets]]
- [[Services]]

## Active recall questions

1. What does a Deployment manage directly?
2. Why does a Deployment create ReplicaSets?
3. What command checks rollout status?
