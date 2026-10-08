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
  - pods
  - workloads
---

## Simple explanation

A Pod is the smallest deployable unit in Kubernetes. It wraps one or more containers that run together on the same node.

## Technical definition

A Pod is a Kubernetes API object that defines containers, shared networking, shared storage volumes, restart policy, and runtime configuration.

## Why this exists

Pods give Kubernetes a consistent unit to schedule, run, monitor, and restart containers.

## How it works step by step

1. A PodSpec is submitted to the API server.
2. The scheduler assigns the Pod to a node.
3. The kubelet on that node asks the container runtime to pull images and start containers.
4. Pod status is reported back to the API server.
5. Controllers recreate Pods when higher-level objects require it.

## Commands used to inspect it

```bash
kubectl get pods -A
kubectl get pod <pod-name> -n <namespace> -o wide
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
```

## Common failures

- [[CrashLoopBackOff]]
- [[ImagePullBackOff]]
- [[Pending Pods]]
- [[OOMKilled]]

## Related Kubernetes concepts

- [[Deployments]]
- [[ReplicaSets]]
- [[Kubelet]]
- [[Container Runtime]]

## Active recall questions

1. Why does Kubernetes schedule Pods instead of individual containers?
2. What information does kubectl describe pod show?
3. Why are standalone Pods uncommon in production?
