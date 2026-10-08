---
type: kubestronaut-lab
lab_id: KCNA-LAB-003
certification: KCNA
topic: Services and DNS
difficulty: beginner
estimated_minutes: 45
actual_minutes: 0
status: not-started
repeat_required: false
repeat_reason:
source_daily_note: [[2026-10-18 - Kubernetes - Services and Service Discovery]]
commands_practiced:
  - kubectl get svc
  - kubectl describe svc
  - kubectl get endpoints
  - kubectl exec nslookup
failure_modes:
  - DNS resolution failures
  - Service connectivity failures
next_review: 2026-10-25
completed_date:
tags:
  - kubestronaut
  - kubernetes
  - lab
  - kcna
---

## Lab overview

Practice validating Service selectors, endpoints, and in-cluster DNS.

## Objectives

- Inspect Services and endpoints.
- Verify label selector alignment.
- Test DNS and connectivity from inside the cluster.

## Commands

```bash
kubectl get svc -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl get endpoints -n <namespace>
kubectl get pods -n <namespace> --show-labels
kubectl exec -n <namespace> <pod-name> -- nslookup <service-name>
```

## Expected results

- Service-to-Pod routing can be explained.
- Empty endpoints can be diagnosed.

## Actual results

- 

## Timing

- Estimated minutes: 45
- Actual minutes: 0

## Failure modes encountered

- 

## Related troubleshooting

- [[DNS Resolution Failures]]
- [[Service Connectivity Failures]]

## Tasks

- [ ] Complete Services and DNS lab #kubestronaut #lab #kcna 📅 2026-10-18
- [ ] Record selector and endpoint findings #kubestronaut #lab 📅 2026-10-18
- [ ] Update actual_minutes after lab #kubestronaut #lab 📅 2026-10-18

## Lessons learned

- 