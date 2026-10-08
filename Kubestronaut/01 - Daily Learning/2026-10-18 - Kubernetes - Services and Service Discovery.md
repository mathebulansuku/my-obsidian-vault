---
type: kubestronaut-daily
date: 2026-10-18
certification: KCNA
topic: Services and Service Discovery
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-19
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

- Explain why Services exist.
- Understand stable networking for changing Pods.
- Identify ClusterIP, NodePort, and LoadBalancer at a high level.
- Understand basic service discovery.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Pods
- Deployments
- Basic networking

### Important concepts

- Service
- ClusterIP
- NodePort
- LoadBalancer
- Selector
- Endpoint
- DNS name

### Links to related Obsidian notes

- [[Services]]
- [[Pods]]
- [[Deployments]]
- [[DNS Resolution Failures]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Create a Deployment.
- Expose it with a Service.
- Inspect Service and endpoint mappings.

### Required environment

- Kubernetes cluster or KodeKloud lab.

### Commands to execute

```bash
kubectl create deployment svc-demo --image=nginx
kubectl expose deployment svc-demo --port=80 --target-port=80
kubectl get svc
kubectl get endpoints
kubectl describe svc svc-demo
kubectl delete svc svc-demo
kubectl delete deployment svc-demo
```

### Expected results

- Service is created.
- Endpoint points to matching Pod IPs.
- Service remains stable while Pods are selected dynamically.

### Troubleshooting questions

- What happens if the Service selector does not match any Pods?
- Why do Pods need stable service discovery?
- How does ClusterIP differ from NodePort?

### Links to relevant YAML manifests

- Optional Service manifest can be created in a lab note.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A frontend cannot reach a backend even though backend Pods are Running.

### Troubleshooting challenge

Check Service selector, endpoints, targetPort, and namespace.

### Debugging exercise

Compare labels on Pods with the Service selector.

### Production engineering question

Why should applications usually connect to Services instead of Pod IPs?

## 08:45–09:00 — Active recall

### Five recall questions

1. Why do Kubernetes Services exist?
2. What is a selector?
3. What is an endpoint?
4. What is ClusterIP used for?
5. What could cause a Service to have no endpoints?

### Feynman explanation exercise

Explain Services as stable phone numbers for changing Pods.

### Production-focused scenario question

A Service has no endpoints. What are your first three checks?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-19

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-18
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-18
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-18
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-18
- [ ] Update confidence rating #kubestronaut 📅 2026-10-18
- [ ] Record actual study time #kubestronaut 📅 2026-10-18

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
