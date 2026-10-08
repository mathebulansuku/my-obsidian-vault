---
type: kubestronaut-incident
component: RBAC
failure_type: RBAC permission failures
severity: medium
status: not-started
confidence: 0
last_reviewed: 2026-10-08
next_review: 2026-10-27
source_lab:
source_daily_note:
diagnostic_commands:
  - kubectl auth can-i
  - kubectl describe role
  - kubectl describe rolebinding
related_errors:
  - Forbidden
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---

## Symptoms

- User, service account, or controller receives Forbidden errors.
- Workload cannot list, get, create, update, or delete required resources.

## Impact

- Automation, deployments, or apps fail due to missing permissions.

## Diagnostic commands

```bash
kubectl auth can-i <verb> <resource> -n <namespace>
kubectl auth can-i <verb> <resource> --as system:serviceaccount:<namespace>:<service-account> -n <namespace>
kubectl get role,rolebinding -n <namespace>
kubectl describe rolebinding <name> -n <namespace>
```

## Investigation process

1. Identify the subject receiving Forbidden.
2. Identify the verb, resource, API group, and namespace.
3. Test with kubectl auth can-i.
4. Inspect Role/ClusterRole and binding.

## Common root causes

- Missing RoleBinding
- Bound wrong service account
- Wrong namespace
- Missing API group or verb
- Need ClusterRole instead of namespaced Role

## Resolution patterns

- Add least-privilege Role or ClusterRole.
- Bind correct subject.
- Scope permission to the smallest safe namespace/resource.

## Tasks

- [ ] Reproduce or simulate RBAC Forbidden failure #kubestronaut #troubleshooting 📅 2026-10-27
- [ ] Document diagnostic command output #kubestronaut #troubleshooting 📅 2026-10-27
- [ ] Create one flashcard from this incident #kubestronaut #review 📅 2026-10-27

## Lessons learned

- 