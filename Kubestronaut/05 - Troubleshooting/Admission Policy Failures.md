---
type: kubestronaut-incident
component: Admission
failure_type: Admission policy failures
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-28
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl apply --dry-run=server
  - kubectl get events
  - kubectl describe validatingwebhookconfiguration
related_errors:
  - admission webhook denied
  - policy violation
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Resource creation or update is rejected by admission control.
- Error mentions a webhook, policy, or validation failure.

## Impact

- Deployments or configuration changes are blocked.

## Diagnostic commands

```bash
kubectl apply --dry-run=server -f <manifest>.yaml
kubectl get events -A --sort-by=.lastTimestamp
kubectl get validatingwebhookconfiguration
kubectl get mutatingwebhookconfiguration
kubectl describe validatingwebhookconfiguration <name>
```

## Investigation process

1. Capture the exact admission denial message.
2. Identify whether validation or mutation blocked the request.
3. Find the policy/webhook responsible.
4. Decide whether the manifest or policy needs correction.

## Common root causes

- Missing required labels or annotations
- Disallowed privilege or host access
- Image policy violation
- Resource limits policy violation
- Broken admission webhook

## Resolution patterns

- Fix manifest to comply with policy.
- Request policy exception if justified.
- Repair or temporarily disable broken webhook only through approved process.

## Tasks

- [ ] Reproduce or simulate admission policy failure #kubestronaut #troubleshooting 📅 2026-10-28
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-28
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-28

## Lessons learned

- 