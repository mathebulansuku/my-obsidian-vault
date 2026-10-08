---
type: kubestronaut-incident
component: Service
failure_type: Service connectivity failures
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-21
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl get svc
  - kubectl get endpoints
  - kubectl describe svc
related_errors:
  - connection refused
  - timeout
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Service DNS resolves but traffic fails.
- Connection times out or is refused.

## Impact

- Application components cannot communicate.

## Diagnostic commands

```bash
kubectl get svc -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl get endpoints <service-name> -n <namespace>
kubectl get pods -n <namespace> --show-labels
kubectl exec -n <namespace> <pod-name> -- curl -v http://<service-name>:<port>
```

## Investigation process

1. Verify service exists and port is correct.
2. Confirm endpoints are populated.
3. Check selector labels against Pods.
4. Test from inside the cluster.

## Common root causes

- Selector mismatch
- Wrong targetPort
- No ready Pods
- NetworkPolicy blocking traffic

## Resolution patterns

- Fix labels or selector.
- Correct port and targetPort.
- Fix readiness failures.
- Adjust network policy.

## Tasks

- [ ] Reproduce or simulate Service connectivity failure #kubestronaut #troubleshooting 📅 2026-10-21
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-21
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-21

## Lessons learned

- 