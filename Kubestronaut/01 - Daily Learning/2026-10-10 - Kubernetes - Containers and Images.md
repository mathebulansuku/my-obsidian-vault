---
type: kubestronaut-daily
date: 2026-10-10
certification: KCNA
topic: Containers and Images
status: not-started
study_minutes: 0
lesson_completed: false
lab_completed: false
confidence: 0
mock_score:
next_review: 2026-10-11
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

- Explain what a container is.
- Understand the difference between an image and a running container.
- Identify why containers are useful for cloud native applications.
- Understand basic image registry concepts.

### KodeKloud lesson reference

- Course: Kubernetes and Cloud-Native Associate (KCNA)
- Exact lesson title: verify inside KodeKloud before starting.

### Required prerequisite knowledge

- Basic Linux processes
- Basic application deployment concepts

### Important concepts

- Container image
- Container runtime
- Image registry
- Immutable packaging
- OCI image standards

### Links to related Obsidian notes

- [[Container Runtime]]
- [[Kubernetes Cluster]]
- [[Pods]]

## 07:30–08:15 — Practical labs

### Lab objectives

- Inspect local container tooling if available.
- Pull and run a simple container image.
- Compare image, container, and process concepts.

### Required environment

- Docker, Podman, containerd, or KodeKloud lab environment.

### Commands to execute

```bash
docker version
docker pull nginx:latest
docker run --name kcna-nginx -p 8080:80 -d nginx:latest
docker ps
docker logs kcna-nginx
docker stop kcna-nginx
docker rm kcna-nginx
```

### Expected results

- nginx image is pulled.
- A container starts successfully.
- Logs and running container status are visible.

### Troubleshooting questions

- What fails if the container runtime is not running?
- What happens if port 8080 is already in use?
- Why should production images avoid using latest tags?

### Links to relevant YAML manifests

- None today.

## 08:15–08:45 — Engineering challenges

### Real-world Kubernetes scenario

A production deployment fails because an image tag was overwritten with incompatible application code.

### Troubleshooting challenge

Identify how mutable image tags can cause unexpected rollouts.

### Debugging exercise

Compare the output of image listing commands and running container commands.

### Production engineering question

Why is image immutability important in regulated environments?

## 08:45–09:00 — Active recall

### Five recall questions

1. What is a container image?
2. What is a running container?
3. What does a container runtime do?
4. Why are image registries important?
5. Why is latest a risky production tag?

### Feynman explanation exercise

Explain containers using the analogy of packaged applications.

### Production-focused scenario question

A team cannot reproduce a production bug locally. How could container images help?

### Confidence assessment

Confidence: 0/5

### Next revision date

2026-10-11

## Daily execution tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-10
- [ ] Complete today's Kubernetes lab #kubestronaut #lab #kcna 📅 2026-10-10
- [ ] Document commands and findings #kubestronaut #lab 📅 2026-10-10
- [ ] Answer active recall questions #kubestronaut #review #kcna 📅 2026-10-10
- [ ] Update confidence rating #kubestronaut 📅 2026-10-10
- [ ] Record actual study time #kubestronaut 📅 2026-10-10

## Completion criteria

- [ ] Relevant lesson studied
- [ ] Practical exercise attempted
- [ ] Key insights documented
- [ ] Active recall questions answered
