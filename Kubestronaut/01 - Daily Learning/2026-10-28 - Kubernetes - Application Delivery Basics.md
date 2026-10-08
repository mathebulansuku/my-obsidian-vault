---
type: kubestronaut-daily
date: 2026-10-28
certification: KCNA
topic: Application Delivery Basics
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-29
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

- Understand cloud native application delivery.
- Explain the difference between build, package, deploy, and operate.
- Understand basic CI/CD and GitOps ideas.
- Identify why repeatability matters.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Containers
- Deployments
- Services

### Important concepts

- CI/CD
- GitOps
- Manifest
- Deployment pipeline
- Rollback
- Release strategy

### Links to related Obsidian notes

- [[Deployments]]
- [[GitOps]]
- [[Helm]]
- [[Failed Rolling Deployments]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Perform a simple image update.
- Observe rollout status.
- Practice rollback at a basic level.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl create deployment delivery-demo --image=nginx:1.25
kubectl rollout status deployment/delivery-demo
kubectl set image deployment/delivery-demo nginx=nginx:1.26
kubectl rollout status deployment/delivery-demo
kubectl rollout history deployment/delivery-demo
kubectl rollout undo deployment/delivery-demo
kubectl delete deployment delivery-demo
```

### Expected results

- Deployment is created.
- Image update triggers rollout.
- Rollout history and rollback are available.

### Troubleshooting questions

- What does rollout status tell you?
- What happens during rollback?
- Why is manual kubectl set image not a full production delivery strategy?

### Links to relevant YAML manifests

- Optional Deployment manifest can be created in lab notes.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A bad release breaks production and must be rolled back quickly.

### Troubleshooting challenge

Explain how rollout history helps incident response.

### Debugging exercise

Compare rollout status before and after an image update.

### Production engineering question

Why do mature teams prefer repeatable pipelines over manual cluster changes?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is CI/CD?
2. What is GitOps?
3. What is a Kubernetes manifest?
4. What command checks rollout status?
5. What command performs a rollback?

### Feynman explanation exercise

Explain application delivery as a controlled path from code to production.

### Production-focused scenario question

A developer hotfixes production manually. What risks does this create?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-29

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-28
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-28
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-28
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-28
- [ ] Update confidence rating #kubestronaut 📅 2026-10-28
- [ ] Record actual study time #kubestronaut 📅 2026-10-28

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
