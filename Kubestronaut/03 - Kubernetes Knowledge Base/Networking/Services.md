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
  - services
  - networking
---

## Simple explanation

A Service gives stable network access to a changing set of Pods.

## Technical definition

A Service is a Kubernetes API object that selects Pods using labels and exposes them through a stable virtual IP and DNS name.

## Why this exists

Pods are temporary and can be recreated with new IP addresses. Services provide a stable way for clients to reach them.

## Commands used to inspect it

```bash
kubectl get svc -A
kubectl describe svc <service-name> -n <namespace>
kubectl get endpoints <service-name> -n <namespace>
kubectl get pods -n <namespace> --show-labels
```

## Common failures

- Selector does not match Pods
- Wrong targetPort
- No ready endpoints
- DNS lookup failure

## Troubleshooting methods

- Check Service selector.
- Check Pod labels.
- Check endpoints.
- Test DNS from inside the cluster.

## Related Kubernetes concepts

- [[Pods]]
- [[Service Discovery]]
- [[CoreDNS]]
- [[Network Policies]]
- [[Service Connectivity Failures]]

## Active recall questions

1. Why do Services exist if Pods already have IP addresses?
2. What connects a Service to its backend Pods?
3. What does an empty endpoint list usually suggest?
