---
type: kubestronaut-daily
date: 2026-10-20
certification: KCNA
topic: Cloud Native Networking Basics
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-21
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

- Understand basic Kubernetes networking assumptions.
- Explain Pod-to-Pod, Pod-to-Service, and external-to-Service traffic at a high level.
- Understand the role of DNS in service discovery.
- Identify common network troubleshooting areas.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Services
- Pods
- Basic IP and DNS concepts

### Important concepts

- Pod IP
- Service IP
- DNS
- CNI
- Network policy
- Ingress

### Links to related Obsidian notes

- [[Services]]
- [[DNS Resolution Failures]]
- [[Network Policies]]
- [[Ingress]]
- [[AWS-Networking-Full-Overview]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Inspect Pod IPs and Service IPs.
- Test basic in-cluster connectivity where possible.
- Observe DNS naming patterns.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl get pods -A -o wide
kubectl get svc -A
kubectl run net-debug --image=busybox:1.36 --restart=Never -- sleep 3600
kubectl exec net-debug -- nslookup kubernetes.default
kubectl delete pod net-debug
```

### Expected results

- Pod and Service IPs are visible.
- DNS lookup for kubernetes.default succeeds if cluster DNS is working.

### Troubleshooting questions

- What could cause DNS lookup failure?
- What is the difference between Pod IP and Service IP?
- What does the CNI plugin provide?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A microservice cannot reach another service by DNS name after deployment.

### Troubleshooting challenge

Check namespace, Service name, endpoints, DNS, and network policy.

### Debugging exercise

Draw a request path from Pod A to Service B.

### Production engineering question

Why is Kubernetes networking a major source of production incidents?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a Pod IP?
2. What is a Service IP?
3. What does cluster DNS provide?
4. What is CNI responsible for?
5. What are common causes of service connectivity failure?

### Feynman explanation exercise

Explain Kubernetes networking as a service directory and routing system.

### Production-focused scenario question

A Service resolves in DNS but connections timeout. What do you check next?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-21

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-20
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-20
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-20
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-20
- [ ] Update confidence rating #kubestronaut 📅 2026-10-20
- [ ] Record actual study time #kubestronaut 📅 2026-10-20

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
