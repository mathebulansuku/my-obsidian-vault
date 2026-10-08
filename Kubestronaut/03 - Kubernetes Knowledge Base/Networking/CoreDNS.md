---
type: kubestronaut-knowledge
area: Networking
certifications:
  - KCNA
  - CKA
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - coredns
  - networking
---

## Simple explanation

CoreDNS provides DNS inside the Kubernetes cluster.

## Technical definition

CoreDNS is the cluster DNS service that resolves Kubernetes Service names and other configured DNS records.

## Commands used to inspect it

```bash
kubectl get pods -n kube-system -l k8s-app=kube-dns
kubectl get svc -n kube-system kube-dns
kubectl logs -n kube-system -l k8s-app=kube-dns
```

## Common failures

- [[DNS Resolution Failures]]
- CoreDNS Pods not running
- Network plugin issues

## Related Kubernetes concepts

- [[Service Discovery]]
- [[Services]]
- [[Cluster Networking]]
