---
type: kubestronaut-daily
date: 2026-10-29
certification: KCNA
topic: Storage Basics
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-30
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

- Understand why container storage is ephemeral by default.
- Explain PersistentVolumes and PersistentVolumeClaims at a high level.
- Understand StorageClass as a dynamic provisioning concept.
- Identify common storage failure symptoms.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Deployments
- Basic infrastructure storage concepts

### Important concepts

- Volume
- PersistentVolume
- PersistentVolumeClaim
- StorageClass
- Dynamic provisioning
- Stateful workload

### Links to related Obsidian notes

- [[Persistent Volumes]]
- [[Persistent Volume Claims]]
- [[StorageClass]]
- [[PVC Mount Failures]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Inspect storage classes and PVCs.
- Understand what storage resources exist in the cluster.
- Avoid creating provider-specific resources unless lab environment supports them.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl get storageclass
kubectl get pv
kubectl get pvc -A
kubectl describe storageclass <storageclass-name>
```

### Expected results

- Storage classes are visible if configured.
- Existing PVs and PVCs can be inspected.

### Troubleshooting questions

- What if no StorageClass exists?
- What does Pending PVC mean?
- Why do stateful workloads need careful storage design?

### Links to relevant YAML manifests

- Defer PVC manifests until storage-specific lab.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A database Pod reschedules to another node and cannot mount its volume.

### Troubleshooting challenge

Identify storage, scheduling, and provider-level causes.

### Debugging exercise

Write the relationship: Pod → PVC → PV → underlying storage.

### Production engineering question

Why is storage often harder than stateless workload management in Kubernetes?

## 08:45–09:00 — Active recall

### Five recall questions

1. Why is container storage ephemeral by default?
2. What is a PersistentVolume?
3. What is a PersistentVolumeClaim?
4. What does StorageClass do?
5. What might cause a PVC to remain Pending?

### Feynman explanation exercise

Explain Kubernetes storage as renting durable disk space for Pods.

### Production-focused scenario question

A production database Pod cannot mount its volume. What evidence do you collect?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-30

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-29
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-29
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-29
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-29
- [ ] Update confidence rating #kubestronaut 📅 2026-10-29
- [ ] Record actual study time #kubestronaut 📅 2026-10-29

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
