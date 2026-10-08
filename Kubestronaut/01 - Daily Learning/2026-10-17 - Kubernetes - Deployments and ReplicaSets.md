---
type: kubestronaut-daily
date: 2026-10-17
certification: KCNA
topic: Deployments and ReplicaSets
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-18
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

- Explain why Deployments are used instead of standalone Pods.
- Understand the role of ReplicaSets.
- Understand desired replicas and self-healing.
- Identify basic rollout behavior.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Namespaces
- kubectl basics

### Important concepts

- Deployment
- ReplicaSet
- Replica count
- Rolling update
- Self-healing

### Links to related Obsidian notes

- [[Deployments]]
- [[ReplicaSets]]
- [[Pods]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Create a Deployment.
- Scale replicas.
- Inspect generated ReplicaSets and Pods.
- Delete one Pod and observe self-healing.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl create deployment kcna-web --image=nginx
kubectl get deployments
kubectl get replicasets
kubectl get pods
kubectl scale deployment kcna-web --replicas=3
kubectl get pods
kubectl delete pod <one-kcna-web-pod-name>
kubectl get pods
kubectl delete deployment kcna-web
```

### Expected results

- Deployment creates a ReplicaSet.
- ReplicaSet creates Pods.
- Deleted Pod is replaced automatically.

### Troubleshooting questions

- Why does a deleted Pod come back?
- What manages the desired replica count?
- What is the relationship between Deployment and ReplicaSet?

### Links to relevant YAML manifests

- Optional Deployment manifest can be created in a lab note.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A production web service needs three replicas to survive one Pod failure.

### Troubleshooting challenge

Explain how a Deployment helps maintain availability.

### Debugging exercise

Draw the ownership chain: Deployment → ReplicaSet → Pod.

### Production engineering question

Why is self-healing useful but not sufficient for full reliability?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a Deployment?
2. What is a ReplicaSet?
3. What does replicas mean?
4. Why does Kubernetes recreate a deleted Pod?
5. What command scales a Deployment?

### Feynman explanation exercise

Explain Deployments as a manager that keeps the correct number of app copies running.

### Production-focused scenario question

A Deployment has desired replicas 3 but only 1 Pod is running. What would you inspect?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-18

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-17
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-17
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-17
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-17
- [ ] Update confidence rating #kubestronaut 📅 2026-10-17
- [ ] Record actual study time #kubestronaut 📅 2026-10-17

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
