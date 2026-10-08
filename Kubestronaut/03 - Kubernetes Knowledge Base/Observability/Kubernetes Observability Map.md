---
type: kubestronaut-knowledge-map
area: Observability
created: 2026-10-08
status: active
certifications:
  - KCNA
  - CKA
  - CKAD
  - CKS
tags:
  - kubestronaut
  - kubernetes
  - observability
  - knowledge-map
---

## Observability map

Observability helps explain what is happening inside a cluster or application.

## Core observability concepts

- Logs
- Events
- Metrics
- Probes
- Resource usage
- Alerts

## Common commands

```bash
kubectl get events -A --sort-by=.lastTimestamp
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -c <container-name> -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl top nodes
kubectl top pods -A
```

## Troubleshooting links

- [[CrashLoopBackOff]]
- [[OOMKilled]]
- [[Node NotReady]]
- [[Failed Rolling Deployments]]

## Exam relevance

- KCNA: observability concepts.
- CKA/CKAD: debugging workloads and cluster state.
- CKS: security monitoring and incident response foundations.
