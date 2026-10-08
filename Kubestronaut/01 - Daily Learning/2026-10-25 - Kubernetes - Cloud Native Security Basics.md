---
type: kubestronaut-daily
date: 2026-10-25
certification: KCNA
topic: Cloud Native Security Basics
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-27
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

- Understand basic Kubernetes security responsibilities.
- Explain authentication, authorization, and admission at a high level.
- Understand least privilege and secret handling.
- Identify basic supply-chain security concerns.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- ConfigMaps and Secrets
- kubectl
- API server basics

### Important concepts

- Authentication
- Authorization
- RBAC
- Admission control
- Secrets
- Image security
- Least privilege

### Links to related Obsidian notes

- [[RBAC]]
- [[Secrets]]
- [[Kubernetes API Server]]
- [[Container Runtime]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Inspect current user permissions where possible.
- Review service accounts and RBAC resources.
- Practice safe read-only security inspection.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl auth can-i get pods
kubectl auth can-i create deployments
kubectl get serviceaccounts -A
kubectl get roles,rolebindings -A
kubectl get clusterroles,clusterrolebindings
```

### Expected results

- can-i reports allowed or denied actions.
- RBAC objects are visible if your permissions allow it.

### Troubleshooting questions

- What does forbidden mean?
- What is the difference between Role and ClusterRole?
- Why should default service account usage be reviewed?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A developer has cluster-admin permissions for convenience.

### Troubleshooting challenge

Explain the operational and security risks of excessive privileges.

### Debugging exercise

Use kubectl auth can-i to test at least three permissions.

### Production engineering question

How does least privilege reduce blast radius during incidents?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is authentication?
2. What is authorization?
3. What is RBAC?
4. What does kubectl auth can-i do?
5. Why is least privilege important?

### Feynman explanation exercise

Explain Kubernetes access control using building access badges.

### Production-focused scenario question

An app needs to list Pods in one namespace. What kind of access should it receive?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-27

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-25
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-25
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-25
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-25
- [ ] Update confidence rating #kubestronaut 📅 2026-10-25
- [ ] Record actual study time #kubestronaut 📅 2026-10-25

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
