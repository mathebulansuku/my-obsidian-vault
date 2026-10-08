---
type: kubestronaut-daily
date: 2026-10-16
certification: KCNA
topic: Namespaces and Organization
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-17
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

- Explain what namespaces are.
- Understand how namespaces organize resources.
- Identify namespace-scoped versus cluster-scoped resources.
- Understand common namespace patterns.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- kubectl
- API resources
- Pods

### Important concepts

- Namespace
- Resource isolation
- Default namespace
- kube-system
- Cluster-scoped resources

### Links to related Obsidian notes

- [[Namespaces]]
- [[Pods]]
- [[RBAC]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Create and inspect namespaces.
- Run resources in a specific namespace.
- Understand namespace filtering.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl get namespaces
kubectl create namespace kcna-demo
kubectl run ns-demo --image=nginx -n kcna-demo
kubectl get pods -n kcna-demo
kubectl get pods -A
kubectl delete namespace kcna-demo
```

### Expected results

- Namespace is created.
- Pod is visible only when querying the correct namespace or all namespaces.
- Deleting the namespace removes namespaced resources.

### Troubleshooting questions

- Why does kubectl get pods show no resources when the Pod exists elsewhere?
- What happens when a namespace is deleted?
- Which resources are not namespaced?

### Links to relevant YAML manifests

- Optional namespace manifest can be added later.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A team cannot find their application Pods because they are looking in the wrong namespace.

### Troubleshooting challenge

Design a namespace-aware inspection checklist.

### Debugging exercise

Use kubectl api-resources to identify which resources are namespaced.

### Production engineering question

How would you use namespaces in a multi-team cluster?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a namespace?
2. Is a Node namespaced?
3. Is a Pod namespaced?
4. What is the default namespace?
5. Why is kube-system important?

### Feynman explanation exercise

Explain namespaces as folders or workspaces inside a cluster.

### Production-focused scenario question

A monitoring alert references namespace payments-prod. Why is that information useful?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-17

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-16
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-16
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-16
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-16
- [ ] Update confidence rating #kubestronaut 📅 2026-10-16
- [ ] Record actual study time #kubestronaut 📅 2026-10-16

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
