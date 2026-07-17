---
created: 2026-07-17
type: project
tags: [aws, genai, certification, study-plan, aip-c01]
source: openclaw
---

# AWS Gen AI Developer Pro — Retake Study Plan

## Context

- **Exam:** AWS Certified Generative AI Developer - Professional (AIP-C01)
- **Last attempt:** July 17, 2026 — Score: 717/1000 (need 750)
- **Gap:** 33 points
- **Retake eligible:** July 31, 2026 (earliest)
- **Target retake date:** Early August 2026

## Strategy

Score is identical across two attempts → not a broad knowledge gap. This is a **precision problem** in two domains only. All study time goes to Domain 3 and Domain 5.

**Domains 1, 2, 4 — DO NOT restudy. You've got these.**

---

## Week 1: Domain 3 — AI Safety, Security & Governance (Days 1–7)

This is the big one (20% of exam). Study one topic per day.

### Day 1 — Responsible AI Principles
- [ ] AWS Responsible AI framework: fairness, explainability, privacy, robustness, transparency
- [ ] Human oversight in AI systems — when and why it's required
- [ ] Bias types: data bias, algorithmic bias, societal bias
- [ ] Flashcard: What are AWS's 8 dimensions of Responsible AI?

### Day 2 — Guardrails for Amazon Bedrock
- [ ] What Guardrails do: filter harmful content, block topics, redact PII
- [ ] How to configure: denied topics, content filters, word filters, PII redaction
- [ ] Grounding checks — fact-checking against source material
- [ ] Exam pattern: *"You need to prevent the model from discussing competitor products"* → Guardrails denied topics
- [ ] Flashcard: What are the 5 components of Bedrock Guardrails?

### Day 3 — Data Privacy & PII in GenAI
- [ ] PII detection and redaction in Bedrock Guardrails
- [ ] Data residency — keeping data in specific AWS regions
- [ ] Training data privacy — not using customer data to train AWS models (by default)
- [ ] Consent and data lineage concepts
- [ ] Flashcard: Does AWS use your Bedrock prompts to train models by default?

### Day 4 — IAM & Access Controls for GenAI
- [ ] IAM policies for Bedrock model access (bedrock:InvokeModel, bedrock:InvokeModelWithResponseStream)
- [ ] Resource-based policies vs identity-based policies for Bedrock
- [ ] Cross-account access to Bedrock models
- [ ] VPC endpoints for Bedrock (private access)
- [ ] Flashcard: What IAM action is needed to invoke a Bedrock model?

### Day 5 — Compliance Frameworks & GenAI
- [ ] Mapping GenAI workloads to compliance: GDPR, HIPAA, SOC2
- [ ] AWS shared responsibility model applied to GenAI
- [ ] Model cards — documentation of model behavior, limitations, intended use
- [ ] AI governance frameworks: policies, auditing, logging with CloudTrail
- [ ] Flashcard: What AWS service logs all Bedrock API calls for compliance?

### Day 6 — Prompt Injection & Security Threats
- [ ] Prompt injection: direct (user manipulates prompt) vs indirect (via retrieved content)
- [ ] Jailbreaking attempts — how to mitigate
- [ ] Sensitive information disclosure via model outputs
- [ ] Mitigations: Guardrails, input validation, output filtering, least privilege
- [ ] Flashcard: What is indirect prompt injection in a RAG system?

### Day 7 — Domain 3 Review & Practice
- [ ] Do 20–30 practice questions focused only on Domain 3
- [ ] Review any flashcards you got wrong
- [ ] Write a 1-page summary of Domain 3 in your own words (Feynman technique)

---

## Week 2: Domain 5 + Final Polish (Days 8–14)

### Day 8 — Evaluating FM Outputs
- [ ] Automated metrics: ROUGE (recall-based), BLEU (precision-based), BERTScore (semantic)
- [ ] Human evaluation: preference tests, Likert scales, side-by-side comparisons
- [ ] When to use which metric — ROUGE for summarization, BLEU for translation
- [ ] Flashcard: What does ROUGE measure vs BLEU?

### Day 9 — A/B Testing & Prompt Optimization
- [ ] A/B testing prompts: how to structure experiments, measure outcomes
- [ ] Comparing model versions — shadow deployments, canary releases
- [ ] Prompt versioning and management
- [ ] Flashcard: How would you A/B test two different system prompts in production?

### Day 10 — Debugging RAG Pipelines
- [ ] RAG failure modes: retrieval failures, irrelevant chunks, hallucinations
- [ ] Diagnosing: check embedding quality, chunk size, retrieval k value
- [ ] Re-ranking strategies to improve retrieved context quality
- [ ] Grounding checks in Bedrock Guardrails for RAG
- [ ] Flashcard: Your RAG system is hallucinating. What do you check first?

### Day 11 — Model Monitoring & Drift
- [ ] Model drift: data drift vs concept drift
- [ ] CloudWatch metrics for Bedrock: invocation count, latency, errors
- [ ] Setting up alarms for model performance degradation
- [ ] Human review loops for low-confidence outputs
- [ ] Flashcard: What is the difference between data drift and concept drift?

### Day 12 — Troubleshooting Prompt Failures
- [ ] Why outputs degrade: ambiguous prompts, context window overflow, temperature too high
- [ ] Systematic debugging: isolate variables, simplify prompt, test edge cases
- [ ] Token limits — what happens when you exceed context window
- [ ] Flashcard: Your model output quality suddenly drops after adding more context. What's likely wrong?

### Day 13 — Domain 5 Review + Mixed Practice
- [ ] 20–30 practice questions on Domain 5
- [ ] Mixed set: 40 questions combining Domain 3 and Domain 5
- [ ] Review all flagged flashcards

### Day 14 — Final Review Day
- [ ] Full practice exam (timed, 65 questions)
- [ ] Review wrong answers only — don't re-read everything
- [ ] Reread your Domain 3 Feynman summary from Day 7
- [ ] Sleep well. You've got this.

---

## Key Resources

- [AWS Bedrock Guardrails Docs](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html)
- [AWS Responsible AI](https://aws.amazon.com/ai/responsible-ai/)
- [AIP-C01 Exam Guide](https://d1.awsstatic.com/training-and-certification/docs-generative-ai-developer-professional/AWS-Certified-Generative-AI-Developer-Professional_Exam-Guide.pdf)
- Tutorials Dojo — AIP-C01 practice exams
- Stephane Maarek / Adrian Cantrill GenAI content

---

## Flashcard Quick Reference

**Q: What are AWS's core Responsible AI dimensions?**
A: Fairness, explainability, privacy & security, robustness, transparency, governance, safety, veracity & robustness.

**Q: What are the 5 components of Bedrock Guardrails?**
A: Content filters, denied topics, word filters, PII redaction, grounding checks.

**Q: Does AWS use your Bedrock prompts to train models?**
A: No — by default AWS does not use customer inputs/outputs to train models.

**Q: What IAM action invokes a Bedrock model?**
A: `bedrock:InvokeModel` (sync) or `bedrock:InvokeModelWithResponseStream` (streaming).

**Q: What AWS service logs all Bedrock API calls?**
A: AWS CloudTrail.

**Q: What is indirect prompt injection?**
A: When malicious instructions are embedded in retrieved content (e.g., a webpage or document) that the RAG system pulls in, causing the model to execute unintended instructions.

**Q: ROUGE vs BLEU?**
A: ROUGE measures recall (how much of the reference is captured) — used for summarization. BLEU measures precision (how much of the output matches the reference) — used for translation.

**Q: RAG system is hallucinating — what do you check first?**
A: Check retrieval quality — are the right chunks being retrieved? Check chunk size, embedding model quality, and top-k value. Then check if Guardrails grounding checks are enabled.

**Q: Data drift vs concept drift?**
A: Data drift = input data distribution changes. Concept drift = the relationship between inputs and correct outputs changes (e.g., user behavior shifts over time).

---

## Related Notes

- [[AWS Generative AI Developer Pro]]
- [[Amazon Bedrock]]
- [[RAG - Retrieval Augmented Generation]]
- [[AWS Certifications]]
