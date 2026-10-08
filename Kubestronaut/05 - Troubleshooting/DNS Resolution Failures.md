---
type: kubestronaut-incident
component: DNS
failure_type: DNS resolution failures
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-20
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl exec nslookup
  - kubectl get svc
  - kubectl get endpoints
  - kubectl logs coredns
related_errors:
  - NXDOMAIN
  - timeout
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Pods cannot resolve service names.
- Requests fail with DNS lookup errors or timeouts.

## Impact

- Service-to-service communication fails.
- Applications may appear partially down.

## Diagnostic commands

```bash
kubectl exec -n <namespace> <pod-name> -- nslookup kubernetes.default
kubectl get svc -n <namespace>
kubectl get endpoints -n <namespace>
kubectl get pods -n kube-system -l k8s-app=kube-dns
kubectl logs -n kube-system -l k8s-app=kube-dns
```

## Investigation process

1. Test DNS from an affected Pod.
2. Verify service and endpoints exist.
3. Check CoreDNS Pods and logs.
4. Distinguish DNS failure from network policy or service issue.

## Common root causes

- Wrong service name or namespace
- CoreDNS unhealthy
- No endpoints behind service
- Network policy blocking DNS

## Resolution patterns

- Correct DNS name.
- Fix service selectors or endpoints.
- Restore CoreDNS health.
- Allow DNS egress in network policy.

## Tasks

- [ ] Reproduce or simulate DNS resolution failure #kubestronaut #troubleshooting 📅 2026-10-20
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-20
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-20

## Lessons learned

- 