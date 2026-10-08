---
type: kubestronaut-knowledge
area: Security
certifications:
  - CKAD
  - KCSA
  - CKS
status: draft
confidence: 0
last_reviewed: 2026-10-08
tags:
  - kubestronaut
  - kubernetes
  - security-context
  - security
---

## Simple explanation

A SecurityContext controls security-related settings for a Pod or container.

## Technical definition

SecurityContext settings can define user IDs, privilege behavior, Linux capabilities, filesystem permissions, and other runtime security controls.

## Security considerations

- Avoid privileged containers unless absolutely required.
- Prefer running as non-root.
- Drop unnecessary Linux capabilities.
- Use read-only root filesystems where possible.

## Related Kubernetes concepts

- [[Pods]]
- [[Admission Control]]
- [[Kubernetes Security Map]]
