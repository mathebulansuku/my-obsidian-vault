---
type: kubestronaut-operating-manual
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - operating-manual
  - workflow
---

## Purpose

This vault is the operating system for the Kubestronaut programme. It is designed to manage learning, labs, troubleshooting, active recall, weak areas, mock exams, certification readiness, and maintenance without inflating progress beyond evidence.

## Start here

Open [[Kubestronaut HQ]] first. Use it as the main launchpad.

Primary dashboards:

- [[Learning Roadmap]] — schedule and generated learning notes
- [[Task Dashboard]] — all open work
- [[Knowledge Base Dashboard]] — Kubernetes concept notes
- [[Lab Dashboard]] — hands-on practice
- [[Troubleshooting Dashboard]] — failure-mode practice
- [[Active Recall Dashboard]] — review and recall
- [[Weak Area Register]] — known gaps
- [[Mock Exam Dashboard]] — practice exam records
- [[Certification Dashboard]] — tracker overview
- [[Maintenance Dashboard]] — weekly cleanup

## Daily workflow

Use this during the 07:00–09:00 SAST study window.

1. Open [[Kubestronaut HQ]].
2. Check Today's tasks.
3. Open today's daily learning note from the Today or Next sessions table.
4. Complete the theory section.
5. Complete or attempt the lab section.
6. Record commands, results, and errors.
7. Answer active recall questions without notes.
8. Set confidence honestly.
9. Add weak areas to [[Weak Area Register]].
10. Link useful concepts to [[Knowledge Base Dashboard]].

Done means:

- lesson studied
- lab attempted
- notes written
- active recall completed
- weak areas recorded
- actual study time updated

## Lab workflow

Use [[Lab Dashboard]] to find lab work.

For each lab:

1. Confirm environment is safe.
2. Run only lab-appropriate commands.
3. Record expected and actual results.
4. Record commands practiced.
5. Document failure modes.
6. Link to troubleshooting notes when something breaks.
7. Mark repeat_required if you could not complete it independently.

Never paste real credentials, kubeconfigs, tokens, private keys, or passwords.

## Troubleshooting workflow

Use [[Troubleshooting Dashboard]] for failure-mode practice.

For each issue:

1. Identify symptoms.
2. Check events.
3. Describe the affected object.
4. Check logs.
5. Confirm root cause.
6. Record diagnostic commands.
7. Add prevention notes.
8. Create at least one recall question or flashcard.

Common high-value incidents include:

- [[CrashLoopBackOff]]
- [[ImagePullBackOff]]
- [[Pending Pods]]
- [[Node NotReady]]
- [[DNS Resolution Failures]]
- [[Service Connectivity Failures]]
- [[RBAC Permission Failures]]

## Knowledge base workflow

Use [[Knowledge Base Dashboard]] when a topic appears repeatedly or remains weak.

Create or update concept notes when:

- a daily lesson introduces a durable concept
- a lab uses a command repeatedly
- a troubleshooting issue depends on the concept
- a mock exam exposes a gap
- a certification objective depends on it

Concept notes should answer:

- what it is
- why it exists
- how it works
- how to inspect it
- how it fails
- how to troubleshoot it
- how it matters in production

Use [[kubectl Command Reference]] for reusable command patterns.

## Active recall workflow

Use [[Active Recall Dashboard]] and [[Review Protocol]].

After each study session:

1. Answer recall questions without looking at notes.
2. Rate confidence from 0 to 5.
3. Set next_review using [[Review Protocol]].
4. Add missed concepts to [[Weak Area Register]].
5. Promote repeated weak areas into knowledge notes.

Confidence guide:

| Score | Meaning |
|---:|---|
| 0 | Cannot explain it yet |
| 1 | Recognize terms only |
| 2 | Partial understanding |
| 3 | Can explain basics |
| 4 | Can use it in labs |
| 5 | Can explain and troubleshoot it under pressure |

## Weekly workflow

At the end of each week:

1. Open [[Weekly Review Dashboard]].
2. Complete the weekly review note.
3. Run [[Weekly Maintenance Routine]].
4. Check [[Maintenance Dashboard]].
5. Update [[Weak Area Register]].
6. Update the active certification tracker.
7. Create or improve knowledge notes from repeated weak areas.

Weekly review is not just a summary. It is a correction loop.

## Monthly workflow

At month end:

1. Open [[Monthly Review Dashboard]].
2. Complete the monthly review note.
3. Summarize study hours and completed labs.
4. Review mock exam performance.
5. Update certification readiness.
6. Set next month focus.
7. Confirm no official status is inferred from practice scores.

## Mock exam workflow

Use [[Mock Exam Dashboard]] and [[Exam Readiness Protocol]].

Before a mock:

- confirm the objective
- set time limit
- set target score
- take it without notes if it is meant to simulate exam conditions

After a mock:

1. Record score and timing.
2. Record incorrect categories.
3. Add weak areas to [[Weak Area Register]].
4. Create follow-up tasks.
5. Update certification tracker only with evidence.
6. Do not treat a mock pass as an official pass.

## Certification workflow

Use [[Certification Dashboard]] and individual trackers:

- [[KCNA Tracker]]
- [[CKA Tracker]]
- [[CKAD Tracker]]
- [[KCSA Tracker]]
- [[CKS Tracker]]

A certification should move toward booking only when evidence supports it:

- official objectives reviewed
- course coverage adequate
- labs completed
- weak areas reviewed
- mock performance acceptable
- time management acceptable
- no-notes practice acceptable

Use [[Exam Booking Decision Checklist]] before booking.

## Maintenance workflow

Use [[Maintenance Dashboard]] once per week.

Check:

- stale daily notes
- low-confidence concepts
- draft knowledge notes
- labs needing cleanup
- troubleshooting drills needing review
- incomplete mock follow-ups
- certification trackers needing review

Close obsolete tasks only when they are truly obsolete.

## Safety rules

- Never store kubeconfig files, AWS credentials, tokens, passwords, private keys, or real secrets.
- Do not mark certification pass status without verified official results.
- Do not inflate readiness scores without evidence.
- Do not treat course completion as exam readiness.
- Do not skip weak-area follow-up after mock exams.

## What to do when behind

If you miss sessions:

1. Do not mark missed work complete.
2. Use [[Maintenance Dashboard]] to identify stale notes.
3. Resume from the next important learning objective.
4. Move persistent gaps into [[Weak Area Register]].
5. Re-plan only the minimum needed to recover.

## What to do when stuck

If a topic is unclear:

1. Create or update a concept note.
2. Add three active recall questions.
3. Run a small lab.
4. Connect it to a troubleshooting example.
5. Review it again using [[Review Protocol]].

## Final principle

This vault is evidence-based. Progress should reflect work actually completed, skills actually practiced, and readiness actually demonstrated.
