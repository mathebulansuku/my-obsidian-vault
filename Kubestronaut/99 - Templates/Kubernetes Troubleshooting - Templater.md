---
type: kubestronaut-template
template_for: kubestronaut-incident
templater: true
tags:
  - kubestronaut
  - template
  - templater
  - troubleshooting
---

---
type: kubestronaut-incident
component:
failure_type:
severity:
status: not-started
confidence: 0
last_reviewed: <% tp.date.now("YYYY-MM-DD") %>
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
kubectl get events -A --sort-by=.lastTimestamp
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
- [[Knowledge Base Dashboard]]
- [[kubectl Command Reference]]

## Prevention

## Related concepts

- 

## Tasks

- [ ] Reproduce or simulate the failure #kubestronaut #troubleshooting
- [ ] Document diagnostic commands #kubestronaut #troubleshooting
- [ ] Create one flashcard from this incident #kubestronaut #review

## Flashcards

What is the first diagnostic step for <% tp.file.title %>?
?
Check symptoms, recent events, affected namespace, and relevant Kubernetes object details.

## Lessons learned

- 
