---
type: kubestronaut-knowledge-map
area: Networking
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
  - networking
  - knowledge-map
---

## Networking map

Kubernetes networking connects Pods, Services, DNS, nodes, and external traffic.

## Core networking concepts

- [[Services]]
- [[Service Discovery]]
- [[CoreDNS]]
- [[Cluster Networking]]
- [[Network Policies]]

## Troubleshooting links

- [[DNS Resolution Failures]]
- [[Service Connectivity Failures]]
- [[Pending Pods]]

## Lab links

- [[KCNA-LAB-003 - Services and DNS]]

## Common commands

```bash
kubectl get svc -A
kubectl get endpoints -A
kubectl get pods -n kube-system -l k8s-app=kube-dns
kubectl describe svc <service-name> -n <namespace>
kubectl run tmp-shell --rm -it --image=busybox:1.36 -- nslookup kubernetes.default
```

## Exam relevance

- KCNA: service discovery and cloud native networking concepts.
- CKA: cluster networking, Services, DNS, and troubleshooting.
- CKAD: exposing applications and debugging app connectivity.
- CKS: NetworkPolicies and traffic restriction.
