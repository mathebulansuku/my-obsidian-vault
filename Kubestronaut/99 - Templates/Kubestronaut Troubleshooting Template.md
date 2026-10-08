---
type: kubestronaut-template
template_for: kubestronaut-incident
tags:
  - kubestronaut
  - template
  - troubleshooting
---

## Metadata template

```yaml
---
type: kubestronaut-incident
component:
failure_type:
severity:
status: not-started
confidence: 0
last_reviewed:
next_review:
source_lab:
source_daily_note:
diagnostic_commands: []
related_errors: []
tags:
  - kubestronaut
  - kubernetes
  - troubleshooting
---
```

## Symptoms

## Impact

## Relevant error messages

```text

```

## Root cause

## Diagnostic commands

```bash
kubectl get pods -A
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
```

## Investigation process

1. 
2. 
3. 

## Resolution

## Review plan

- Last reviewed:
- Next review:
- Confidence: 0/5

## Links

- Source lab:
- Source daily note:
- Related concept notes:

## Prevention

## Related concepts

- 

## Lessons learned

- 
