---
type: kubestronaut-incident
component: Node
failure_type: Node NotReady
severity: high
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-19
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl get nodes
  - kubectl describe node
  - kubectl get events
related_errors:
  - NotReady
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- Node status is NotReady.
- Pods on the node may become unavailable or rescheduled.

## Impact

- Reduced cluster capacity.
- Potential workload disruption.

## Diagnostic commands

```bash
kubectl get nodes -o wide
kubectl describe node <node-name>
kubectl get events -A --sort-by=.lastTimestamp
kubectl get pods -A --field-selector spec.nodeName=<node-name>
```

## Investigation process

1. Confirm affected node and duration.
2. Inspect node conditions and recent events.
3. Check workload impact.
4. Escalate to node/system logs if needed.

## Common root causes

- Kubelet unhealthy
- Network plugin issue
- Disk pressure
- Memory pressure
- Node unreachable

## Resolution patterns

- Drain and replace node if needed.
- Resolve kubelet/runtime issue.
- Free disk or memory pressure.
- Repair networking.

## Tasks

- [ ] Reproduce or simulate Node NotReady triage #kubestronaut #troubleshooting 📅 2026-10-19
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-19
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-19

## Lessons learned

- 