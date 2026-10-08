---
type: kubestronaut-daily
date: 2026-10-15
certification: KCNA
topic: kubectl and API Resources
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-16
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

- Understand how kubectl talks to the Kubernetes API.
- Learn common read-only inspection commands.
- Identify Kubernetes resource types and API groups.
- Understand the importance of current context and namespace.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Control plane components
- Cluster basics

### Important concepts

- kubectl
- kubeconfig
- context
- namespace
- API resource
- YAML output

### Links to related Obsidian notes

- [[Kubernetes API Server]]
- [[Kubernetes Cluster]]
- [[Namespaces]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Practice safe inspection commands.
- List resources across namespaces.
- View YAML output.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl config current-context
kubectl config get-contexts
kubectl api-resources
kubectl get all -A
kubectl get pods -A -o wide
kubectl explain pod
kubectl explain pod.spec
```

### Expected results

- Current context is known.
- API resources are listed.
- kubectl explain displays schema help.

### Troubleshooting questions

- Why can kubectl work for one namespace but fail in another?
- What does forbidden mean in a kubectl error?
- Why should engineers avoid blind apply/delete commands?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

You are given read-only cluster access during an incident. You need to collect useful information without changing state.

### Troubleshooting challenge

Build a safe read-only command checklist.

### Debugging exercise

Run kubectl explain for Pod and Deployment fields and note what you learn.

### Production engineering question

Why is read-only access valuable for incident response?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is kubectl?
2. What is a kubeconfig context?
3. What does kubectl api-resources show?
4. What does kubectl explain do?
5. What does a forbidden error usually indicate?

### Feynman explanation exercise

Explain kubectl as a client for the Kubernetes API.

### Production-focused scenario question

You suspect you are connected to the wrong cluster. What command should you run first?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-16

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-15
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-15
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-15
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-15
- [ ] Update confidence rating #kubestronaut 📅 2026-10-15
- [ ] Record actual study time #kubestronaut 📅 2026-10-15

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
