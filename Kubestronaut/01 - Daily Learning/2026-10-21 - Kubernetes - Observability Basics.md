---
type: kubestronaut-daily
date: 2026-10-21
certification: KCNA
topic: Observability Basics
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-25
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

- Understand logs, metrics, and events.
- Learn basic Kubernetes observability commands.
- Identify what information is needed during an incident.
- Understand why observability is essential for SRE work.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Deployments
- kubectl basics

### Important concepts

- Logs
- Metrics
- Events
- Health checks
- Alerts
- SLOs

### Links to related Obsidian notes

- [[Observability]]
- [[Pods]]
- [[CrashLoopBackOff]]
- [[OOMKilled]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Collect logs.
- Inspect events.
- View resource usage if metrics are available.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl get events -A --sort-by=.lastTimestamp
kubectl logs <pod-name> -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl top pods -A
kubectl top nodes
```

### Expected results

- Events show recent cluster activity.
- Logs are visible for selected Pods.
- Metrics may work if metrics-server is installed.

### Troubleshooting questions

- What if logs are empty?
- What if metrics are unavailable?
- Why are events useful during troubleshooting?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

An app is intermittently failing, but Pods are currently Running.

### Troubleshooting challenge

Use events, previous logs, and restarts to reconstruct what happened.

### Debugging exercise

Find the restart count for Pods and explain what it suggests.

### Production engineering question

Why are logs alone insufficient for observability?

## 08:45–09:00 — Active recall

### Five recall questions

1. What are logs?
2. What are metrics?
3. What are Kubernetes events?
4. What command shows Pod logs?
5. What command shows recent cluster events?

### Feynman explanation exercise

Explain observability as making systems understandable from the outside.

### Production-focused scenario question

A Pod restarted three times overnight. What evidence would you gather first?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-25

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-21
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-21
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-21
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-21
- [ ] Update confidence rating #kubestronaut 📅 2026-10-21
- [ ] Record actual study time #kubestronaut 📅 2026-10-21

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
