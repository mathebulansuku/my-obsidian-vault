---
type: kubestronaut-command-reference
area: kubectl
created: 2026-10-08
status: active
certifications:
  - KCNA
  - CKA
  - CKAD
  - KCSA
  - CKS
tags:
  - kubestronaut
  - kubernetes
  - kubectl
  - commands
---

## kubectl command reference

Safe reusable command patterns for study, labs, and troubleshooting.

## Context and cluster

```bash
kubectl config current-context
kubectl config get-contexts
kubectl cluster-info
kubectl get nodes -o wide
```

## Discovery

```bash
kubectl api-resources
kubectl explain pod
kubectl explain deployment.spec
kubectl get all -n <namespace>
```

## Pods

```bash
kubectl get pods -A
kubectl get pod <pod-name> -n <namespace> -o wide
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -c <container-name> -n <namespace>
```

## Workloads

```bash
kubectl get deploy,rs,pods -n <namespace>
kubectl rollout status deployment/<deployment-name> -n <namespace>
kubectl rollout history deployment/<deployment-name> -n <namespace>
kubectl rollout undo deployment/<deployment-name> -n <namespace>
```

## Services and DNS

```bash
kubectl get svc,endpoints -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl run tmp-shell --rm -it --image=busybox:1.36 -- nslookup kubernetes.default
```

## Config and secrets

```bash
kubectl get configmap,secret -n <namespace>
kubectl describe configmap <name> -n <namespace>
kubectl describe secret <name> -n <namespace>
```

## RBAC

```bash
kubectl auth can-i get pods -n <namespace>
kubectl auth can-i create deployments -n <namespace> --as <user-or-serviceaccount>
kubectl get role,rolebinding,clusterrole,clusterrolebinding -A
```

## Storage

```bash
kubectl get pv
kubectl get pvc -A
kubectl get storageclass
kubectl describe pvc <claim-name> -n <namespace>
```

## Events and troubleshooting

```bash
kubectl get events -A --sort-by=.lastTimestamp
kubectl describe node <node-name>
kubectl top nodes
kubectl top pods -A
```

## Safety rules

- Do not paste real tokens, kubeconfigs, private keys, or passwords into notes.
- Prefer read-only commands while learning unless a lab explicitly requires changes.
- Record destructive commands only as patterns, not against production resources.
