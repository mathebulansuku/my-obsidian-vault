---
created: 2026-09-20
type: note
tags: [aws, bedrock, guardrails, genai, security, aip-c01, domain-3]
source: openclaw
---

# Amazon Bedrock Guardrails

## Summary

Guardrails for Amazon Bedrock is a safety and compliance layer applied to GenAI applications. It sits between the user and the model — intercepting inputs and outputs to enforce rules you define. Critical topic for Domain 3: AI Safety, Security & Governance.

---

## The 5 Components

### 1. Content Filters
Filter harmful content across 6 categories with configurable thresholds (None → Low → Medium → High):
- **Hate** — discrimination, derogatory language
- **Insults** — bullying, demeaning content
- **Sexual** — explicit sexual content
- **Violence** — graphic violent content
- **Misconduct** — illegal activity, scams
- **Prompt Attack** — prompt injection, jailbreak attempts

> Exam tip: HIGH threshold = most aggressive filtering.

### 2. Denied Topics
Define topics the model should never discuss — regardless of how the user asks.
- Uses natural language definitions (no regex needed)
- Applies to both input AND output
- Example: "Do not discuss competitor products", "Do not provide investment advice"

> Exam tip: "Chatbot must never discuss X topic" → Denied Topics, not Content Filters.

### 3. Word Filters
Block specific words or phrases — exact match.
- Custom word lists you define
- Managed profanity list (toggle on/off)
- Applied to both inputs and outputs

> Exam tip: Word filters = exact match. Content filters = semantic/contextual.

### 4. PII Redaction
Detect and handle Personally Identifiable Information.

**PII types:** Name, email, phone, SSN, credit card, IP address, age, username, password, and more.

**Two actions per PII type:**
- **BLOCK** — reject entire request if PII detected
- **ANONYMIZE** — replace PII with placeholder (e.g., `[NAME]`, `[EMAIL]`)

**Two directions:** Input (user → model) and Output (model → user)

> Exam tip: ANONYMIZE = conversation continues but scrubbed. BLOCK = PII never acceptable in this context.

### 5. Grounding Checks
Validates model responses are grounded in source material — critical for RAG.
- **Grounding score threshold** — how closely response must align with retrieved context
- **Relevance score threshold** — how relevant retrieved context must be to the query
- If scores fall below threshold → response is blocked

> Exam tip: Grounding checks = the fix for hallucinations in RAG pipelines.

---

## Request Flow

```
User Input
    ↓
[Guardrails — Input Check]
  • Content filters
  • Denied topics
  • Word filters
  • PII detection
    ↓
Foundation Model
    ↓
[Guardrails — Output Check]
  • Same filters applied
  • Grounding check (if RAG)
    ↓
Response to User
```

Both input AND output are checked independently.

---

## Key Behaviours

| Scenario | What Happens |
|----------|-------------|
| Input violates a rule | Request blocked, model never sees it |
| Output violates a rule | Response blocked, user gets safe fallback |
| PII detected (ANONYMIZE) | PII replaced with placeholder, conversation continues |
| Grounding check fails | Response blocked, user gets fallback |
| Prompt injection detected | Blocked at content filter (Prompt Attack category) |

---

## Where Guardrails Apply

- Bedrock Runtime API — `InvokeModel`, `InvokeModelWithResponseStream`, `Converse`
- Bedrock Agents — attach at agent level
- Knowledge Bases — grounding checks apply here
- Works across all supported foundation models

---

## Exam Scenarios

| Question Pattern | Answer |
|-----------------|--------|
| Prevent model discussing topics not in your docs | Denied Topics |
| Stop model returning credit card numbers | PII Redaction (ANONYMIZE or BLOCK) |
| RAG app hallucinating — fix it | Enable Grounding Checks |
| Block jailbreak/prompt injection attempts | Content Filters → Prompt Attack |
| Block specific swear words | Word Filters |
| Chatbot must never discuss competitor X | Denied Topics |
| Log all Guardrail actions for compliance | CloudTrail + CloudWatch |

---

## Flashcards

**Q: What are the 5 components of Bedrock Guardrails?**
A: Content Filters, Denied Topics, Word Filters, PII Redaction, Grounding Checks.

**Q: What is the difference between Content Filters and Denied Topics?**
A: Content Filters block harmful content categories (hate, violence, etc.) semantically. Denied Topics block specific subject areas you define in natural language.

**Q: What is the difference between Word Filters and Content Filters?**
A: Word Filters = exact match on specific words/phrases. Content Filters = semantic/contextual understanding of harmful content.

**Q: When would you use PII ANONYMIZE vs BLOCK?**
A: ANONYMIZE when the conversation should continue but with PII scrubbed. BLOCK when any PII presence is unacceptable.

**Q: What do Grounding Checks do?**
A: Validate that model responses are grounded in retrieved source material. Blocks responses that hallucinate or deviate from context. Critical for RAG pipelines.

**Q: Does Guardrails check only the input or the output?**
A: Both — input and output are checked independently.

**Q: Which Guardrails component stops prompt injection attacks?**
A: Content Filters → Prompt Attack category.

**Q: Your RAG chatbot is making up facts not in your documents. What Guardrails feature fixes this?**
A: Grounding Checks — set a grounding score threshold to block ungrounded responses.

---

## Feynman Explanation

Bedrock Guardrails is like airport security for your AI app. There's a checkpoint when passengers (user inputs) arrive, and another checkpoint when they leave (model outputs). Each checkpoint has different scanners: one for dangerous content (Content Filters), one for forbidden destinations (Denied Topics), one for contraband words (Word Filters), one for identity documents you shouldn't be carrying (PII), and one that checks your boarding pass actually matches your flight (Grounding Checks). If anything fails either checkpoint, the whole thing stops.

---

## Related Notes

- [[Amazon Bedrock]]
- [[RAG - Retrieval Augmented Generation]]
- [[AI Safety Security and Governance]]
- [[GenAI-Pro-Retake-Study-Plan]]
- [[AWS Generative AI Developer Pro]]
