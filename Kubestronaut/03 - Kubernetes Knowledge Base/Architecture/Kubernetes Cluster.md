---
type: kubestronaut-knowledge
area: Architecture
certifications:
  - KCNA
  - CKA
status: draft
confidence: 0
last_reviewed:
tags:
  - kubestronaut
  - kubernetes
  - architecture
---

## Simple explanation

A Kubernetes cluster is a group of machines that run containerized applications and coordinate them as one platform.

## Technical definition

A Kubernetes cluster consists of a control plane and worker nodes. The control plane manages desired state, scheduling, API access, and reconciliation. Worker nodes run application workloads as Pods.

## Why this exists

Clusters exist so teams can run applications reliably across multiple machines instead of manually managing containers one server at a time.

## Internal architecture

- [[Kubernetes API Server]]
- [[etcd]]
- [[Kubernetes Scheduler]]
- [[Kubernetes Controller Manager]]
- [[Kubelet]]
- [[Container Runtime]]
- [[Pods]]

## How it works step by step

1. A user submits desired state through the API server.
2. The API server validates and stores state in etcd.
3. Controllers reconcile actual state toward desired state.
4. The scheduler assigns unscheduled Pods to nodes.
5. Kubelet on each node starts and monitors containers through the container runtime.

## Real-world example

An SRE team deploys a web application with three replicas. Kubernetes keeps three Pods running even if one Pod crashes or one node becomes unavailable.

## Commands used to inspect it

```bash
kubectl cluster-info
kubectl get nodes
kubectl get pods -A
kubectl get componentstatuses
```

## Common failures

- API server unavailable
- Nodes NotReady
- DNS failures
- CNI failures
- Pending Pods due to insufficient resources

## Troubleshooting methods

- Check node status.
- Inspect system Pods.
- Review kubelet logs.
- Verify cluster networking.
- Confirm current kubectl context.

## Security considerations

- Protect kubeconfig access.
- Use RBAC and least privilege.
- Secure the API server.
- Avoid storing credentials in notes or repositories.

## Production best practices

- Use highly available control plane nodes where appropriate.
- Monitor node health and control plane health.
- Backup etcd.
- Standardize cluster access procedures.

## Related Kubernetes concepts

- [[Pods]]
- [[Kubernetes API Server]]
- [[etcd]]
- [[Kubelet]]
- [[Kubernetes Scheduler]]

## Active recall questions

1. What are the two major parts of a Kubernetes cluster?
2. Why does Kubernetes store state in etcd?
3. What happens when a Pod is created but has not yet been assigned to a node?

## References

- https://kubernetes.io/docs/concepts/overview/components/
