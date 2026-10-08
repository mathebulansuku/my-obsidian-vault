---
type: kubestronaut-knowledge
area: Networking
certifications:
  - KCNA
  - CKA
  - CKAD
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - service-discovery
  - networking
---

## Simple explanation

Service discovery lets workloads find other workloads by stable names instead of changing Pod IPs.

## Technical definition

Kubernetes service discovery uses Services and DNS records so clients can resolve Service names inside the cluster.

## Commands used to inspect it

```bash
kubectl get svc -A
kubectl get endpoints -A
kubectl run tmp-shell --rm -it --image=busybox:1.36 -- nslookup kubernetes.default
```

## Common failures

- [[DNS Resolution Failures]]
- [[Service Connectivity Failures]]
- Missing endpoints

## Related Kubernetes concepts

- [[Services]]
- [[CoreDNS]]
- [[Pods]]
