---
type: kubestronaut-daily
date: 2026-10-19
certification: KCNA
topic: ConfigMaps and Secrets
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-20
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

- Explain why configuration should be separated from container images.
- Understand ConfigMaps at a high level.
- Understand Secrets at a high level.
- Learn why Kubernetes Secrets are sensitive even when encoded.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Deployments
- Basic application config

### Important concepts

- ConfigMap
- Secret
- Environment variables
- Mounted configuration
- Base64 encoding
- Secret handling

### Links to related Obsidian notes

- [[ConfigMaps]]
- [[Secrets]]
- [[Pods]]
- [[RBAC]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Create a ConfigMap.
- Create a sample Secret using non-sensitive dummy values.
- Inspect how they appear in Kubernetes.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl create configmap app-config --from-literal=APP_MODE=demo
kubectl get configmap app-config -o yaml
kubectl create secret generic demo-secret --from-literal=username=demo --from-literal=password=not-real
kubectl get secret demo-secret -o yaml
kubectl delete configmap app-config
kubectl delete secret demo-secret
```

### Expected results

- ConfigMap stores plain configuration.
- Secret values are base64-encoded in YAML output.
- No real credentials are used.

### Troubleshooting questions

- Why is base64 not encryption?
- Who should be allowed to read Secrets?
- What should never be stored in Obsidian?

### Links to relevant YAML manifests

- Use dummy values only.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

An engineer commits a manifest containing a real password to a repository.

### Troubleshooting challenge

Explain the incident response steps for leaked credentials.

### Debugging exercise

Decode a dummy Secret and explain why this is not secure storage.

### Production engineering question

How should production systems manage secrets safely?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a ConfigMap?
2. What is a Secret?
3. Is base64 encryption?
4. Why separate config from images?
5. Why should Secret access be restricted?

### Feynman explanation exercise

Explain ConfigMaps and Secrets using app settings and locked drawers.

### Production-focused scenario question

A developer asks to paste kubeconfig into Obsidian for convenience. What do you say and why?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-20

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-19
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-19
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-19
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-19
- [ ] Update confidence rating #kubestronaut 📅 2026-10-19
- [ ] Record actual study time #kubestronaut 📅 2026-10-19

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
