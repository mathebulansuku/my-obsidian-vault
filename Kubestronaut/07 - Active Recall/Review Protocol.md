---
type: kubestronaut-review-protocol
created: 2026-10-08
status: active
tags:
  - kubestronaut
  - active-recall
  - spaced-repetition
  - review
---

## Review model

Use metadata-driven review queues for notes, labs, and incidents. Use the Spaced Repetition plugin separately for flashcards if it detects the card syntax in [[Spaced Repetition Test Cards]].

## Confidence scale

| Score | Meaning | Action |
|---:|---|---|
| 0 | Not assessed | Review immediately |
| 1 | Cannot explain without notes | Re-read, answer recall questions, create flashcard |
| 2 | Partial understanding | Review and do one practical drill |
| 3 | Basic working knowledge | Schedule normal review |
| 4 | Can explain and perform with minimal notes | Extend interval |
| 5 | Can teach and troubleshoot without notes | Mark as strong |

## Default review intervals

| Result after review | Next review interval |
|---|---:|
| Confidence 0–1 | 1 day |
| Confidence 2 | 3 days |
| Confidence 3 | 7 days |
| Confidence 4 | 14 days |
| Confidence 5 | 30 days |

## Review completion checklist

For a daily learning note:

- [ ] Answer the recall questions without looking first #kubestronaut #review
- [ ] Explain the topic using the Feynman section #kubestronaut #review
- [ ] Update confidence only after recall is attempted #kubestronaut #review
- [ ] Set the next_review date using the interval table #kubestronaut #review

For a lab note:

- [ ] Retry failed or unfinished lab steps #kubestronaut #lab #review
- [ ] Update actual_minutes #kubestronaut #lab
- [ ] Record commands practiced #kubestronaut #lab
- [ ] Mark repeat_required only from real lab outcome #kubestronaut #lab

For a troubleshooting note:

- [ ] Reproduce or mentally simulate the failure #kubestronaut #troubleshooting #review
- [ ] State symptoms, first commands, likely causes, and resolution pattern #kubestronaut #troubleshooting #review
- [ ] Update confidence only after the drill #kubestronaut #troubleshooting

## Safety rule

Never paste credentials, tokens, kubeconfig secrets, private keys, or secret values into review notes or flashcards.
