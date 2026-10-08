---
type: kubestronaut-daily
date: 2026-10-12
certification: KCNA
topic: Nodes and Clusters
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-14
tags:
  - kubestronaut
  - kubernetes
  - kcna
planned_minutes: 120
actual_minutes: 0
recall_completed: false
---

## 07:00–07:30 — Theory

### Today's learning objectives

- Understand what a Kubernetes node is.
- Distinguish control plane nodes from worker nodes.
- Explain what a Kubernetes cluster provides.
- Identify core components involved in node health.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Containers
- Basic cluster architecture

### Important concepts

- Node
- Cluster
- Control plane
- Worker node
- Node readiness
- kubelet

### Links to related Obsidian notes

- [[Kubernetes Cluster]]
- [[Kubelet]]
- [[Pods]]
- [[Container Runtime]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Inspect cluster nodes.
- Read node conditions.
- Understand node capacity and allocatable resources.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl get nodes
kubectl get nodes -o wide
kubectl describe node <node-name>
kubectl top nodes
```

### Expected results

- Node names, roles, versions, and readiness are visible.
- Capacity and allocatable resources can be identified.

### Troubleshooting questions

- What does NotReady mean?
- What is the difference between capacity and allocatable?
- What if metrics are unavailable for kubectl top?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A node is reporting NotReady and workloads are being rescheduled.

### Troubleshooting challenge

List the first five things you would inspect.

### Debugging exercise

Find the Ready condition in node details and record its reason/message.

### Production engineering question

Why does node health directly affect application availability?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a Kubernetes node?
2. What is a Kubernetes cluster?
3. What does kubelet do?
4. What does NodeReady indicate?
5. Why is allocatable lower than capacity?

### Feynman explanation exercise

Explain the cluster as a team of machines managed by a coordinator.

### Production-focused scenario question

A node has enough CPU capacity but Pods remain Pending. What might explain this?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-14

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-12
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-12
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-12
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-12
- [ ] Update confidence rating #kubestronaut 📅 2026-10-12
- [ ] Record actual study time #kubestronaut 📅 2026-10-12

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
