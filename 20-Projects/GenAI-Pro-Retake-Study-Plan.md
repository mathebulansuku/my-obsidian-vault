---
created: 2026-07-17
updated: 2026-10-09
type: project
tags: [aws, genai, certification, aip-c01, retake-plan]
source: openclaw
exam: AWS Certified Generative AI Developer - Professional
exam_code: AIP-C01
last_attempt_score: 717
passing_score: 750
target_score: 800
target_retake_date: 2026-10-24
study_window_days: 15
readiness_status: not-ready
booking_decision: conditional
practice_exam_target: 80
weak_focus_domains: [Domain 3, Domain 5]
---

## Context

- **Exam:** AWS Certified Generative AI Developer - Professional (AIP-C01)
- **Attempts:** 3 failed attempts
- **Latest known score:** 717/1000 — need 750 to pass
- **Target retake date:** October 24, 2026
- **Target outcome:** 80%+ on all practice exams before sitting the real exam
- **Main objective:** Close the precision gap by drilling the topics you struggled with most, especially Domain 3 and Domain 5.

## Retake Strategy

This is not a “start from zero” plan. You have already been close. The issue is likely a mix of:

- weak retention in high-value domains
- confusing similar AWS GenAI services/features
- rushing scenario questions
- not consistently eliminating wrong answers
- missing governance, safety, evaluation, monitoring, and troubleshooting details

**Primary focus:** Domain 3 and Domain 5.

**Secondary focus:** mixed practice, wrong-answer review, and exam decision discipline.

**Do not passively reread. Every study session must produce one of these:**

- answered practice questions
- corrected wrong-answer notes
- flashcards
- a Feynman explanation
- an updated weak-area list

---

## Readiness Gates

You are ready to sit on October 24 only if these are true by October 22 or October 23.

| Gate | Required standard | Status |
|---|---|---|
| Practice exam average | 80%+ across last 2 full exams | Not met |
| Lowest recent practice exam | No full exam below 75% | Not met |
| Domain 3 confidence | Can explain safety, governance, Guardrails, IAM, privacy, compliance without notes | Not met |
| Domain 5 confidence | Can troubleshoot RAG, evaluate outputs, monitor drift, and optimize prompts without notes | Not met |
| Wrong-answer log | All missed questions reviewed and categorized | Not met |
| Timing | Complete full exam with 15+ minutes remaining | Not met |
| No-notes recall | Can answer recall questions without notes | Not met |
| Final decision | Sit / postpone decision made honestly | Pending |

> [!important]
> If you are not scoring 80%+ consistently by October 22, do not rely on hope. Use the data and decide whether to sit or postpone.

---

## Daily Study Operating System

Use this structure every study day.

### 60–90 minute minimum block

1. **10 min — Active recall warm-up**
   - Write what you remember before opening notes.
   - Focus on yesterday’s weak areas.

2. **30–40 min — Targeted study**
   - One narrow topic only.
   - Prefer AWS docs, exam guide, Tutorials Dojo explanations, course notes, or your wrong-answer log.

3. **30–45 min — Practice questions**
   - Untimed for learning during Days 1–7.
   - Timed from Day 8 onward.

4. **10–15 min — Wrong-answer review**
   - Why was the right answer right?
   - Why were the wrong options wrong?
   - What keyword or scenario clue did I miss?

5. **5 min — Update tracker**
   - Score
   - weak areas
   - confidence
   - next review item

---

## Weak Area Register

Update this after every quiz or exam.

| Date | Source | Score | Weak topic | Root cause | Fix / next action | Reviewed? |
|---|---:|---:|---|---|---|---|
| 2026-10-09 | Baseline | 717/1000 | Domain 3 / Domain 5 | Prior attempts show recurring precision gap | Begin focused retake plan | No |

### Root cause labels

Use one of these:

- **Knowledge gap** — I did not know the service/feature.
- **Confusion** — I mixed up two similar concepts.
- **Scenario miss** — I missed the wording clue.
- **Overthinking** — I changed from the right answer or added assumptions.
- **Timing** — I rushed or ran out of time.
- **Memory** — I knew it before but could not recall it.

---

## Practice Exam Score Tracker

| Date | Exam / Source | Mode | Score | Domain 3 score | Domain 5 score | Time left | Decision |
|---|---|---|---:|---:|---:|---:|---|
| 2026-10-09 | Baseline from latest real exam | Real exam | 717/1000 | TBD | TBD | TBD | Focused remediation |

### Score rules

- **Below 70%:** stop taking full exams; go back to targeted study.
- **70–74%:** targeted review + domain quizzes only.
- **75–79%:** close, but not ready; retake weak-domain quizzes.
- **80–84%:** exam-ready if repeated twice.
- **85%+:** strong readiness; focus on retention and timing.

---

## 15-Day Retake Calendar

Target exam date: **Saturday, October 24, 2026**.

### Day 1 — October 9 — Baseline + Exam Debrief

#### Objectives

- Reconstruct what went wrong in the last 3 attempts.
- Identify repeated weak areas.
- Start a wrong-answer-first study loop.

#### Tasks

- [ ] Write down everything remembered from failed attempts: topics, wording, surprises, timing problems.
- [ ] Review latest score report if available.
- [ ] Create/update weak areas in the register above.
- [ ] Do 20–30 mixed questions without notes.
- [ ] Categorize misses using root cause labels.

#### Active recall

1. Which topics repeatedly felt uncertain?
2. Which questions came down to two close answers?
3. Did I miss because of knowledge, wording, or overthinking?

---

### Day 2 — October 10 — Domain 3: Responsible AI + Governance

#### Focus

- AWS Responsible AI dimensions
- fairness, explainability, privacy/security, safety, robustness, transparency, governance, veracity
- model cards and documentation
- auditability and human oversight

#### Tasks

- [ ] Study AWS Responsible AI principles.
- [ ] Make a one-page summary from memory.
- [ ] Do 25 Domain 3 questions.
- [ ] Add every miss to the weak-area register.

#### Exam patterns

- If the scenario asks for explainability, transparency, intended use, or limitations → think model cards/governance documentation.
- If the scenario asks for audit trails → think CloudTrail/logging/governance process.
- If the scenario asks for unacceptable model behavior → think Guardrails, human review, and responsible AI controls.

---

### Day 3 — October 11 — Domain 3: Bedrock Guardrails Deep Dive

#### Focus

- denied topics
- content filters
- word filters
- sensitive information filters / PII redaction
- contextual grounding checks
- ApplyGuardrail API

#### Tasks

- [ ] Study Guardrails components and when each one applies.
- [ ] Build a comparison table: denied topics vs content filters vs word filters vs PII vs grounding.
- [ ] Do 30 Guardrails-heavy questions.
- [ ] Write 10 flashcards from misses.

#### Must-know decision rules

- Block a business topic → **denied topics**.
- Block hate/violence/sexual/misconduct categories → **content filters**.
- Block exact terms → **word filters**.
- Detect/redact personal data → **sensitive information / PII filters**.
- Verify answers against source context → **contextual grounding checks**.

---

### Day 4 — October 12 — Domain 3: Security, IAM, Privacy, and Compliance

#### Focus

- Bedrock IAM permissions
- model access controls
- VPC endpoints / private connectivity
- CloudTrail logging
- encryption and data protection
- shared responsibility model
- GDPR, HIPAA, SOC 2 scenario clues

#### Tasks

- [ ] Review IAM actions for Bedrock invocation and model access.
- [ ] Review CloudTrail and CloudWatch roles in GenAI workloads.
- [ ] Do 25–30 security/governance questions.
- [ ] Create “service-to-use” flashcards.

#### Must-know items

- Invoke model: `bedrock:InvokeModel`
- Stream response: `bedrock:InvokeModelWithResponseStream`
- Audit API activity: CloudTrail
- Metrics/alarms: CloudWatch
- Private access: VPC endpoints / PrivateLink where applicable
- Least privilege always wins in security scenarios

---

### Day 5 — October 13 — Domain 3: Prompt Injection + Threat Mitigation

#### Focus

- direct prompt injection
- indirect prompt injection
- jailbreaks
- sensitive data leakage
- RAG poisoning risks
- input validation and output filtering

#### Tasks

- [ ] Write examples of direct vs indirect prompt injection.
- [ ] Map each threat to mitigations.
- [ ] Do 30 security/threat questions.
- [ ] Review all Domain 3 misses from Days 2–5.

#### Mitigation stack

1. least privilege IAM
2. sanitize inputs
3. retrieve only trusted content
4. use Guardrails
5. filter outputs
6. log and monitor
7. human review for high-risk use cases

---

### Day 6 — October 14 — Domain 3 Checkpoint Exam

#### Tasks

- [ ] Do a timed Domain 3 quiz or 40-question focused set.
- [ ] Target: 80%+.
- [ ] Review every wrong and guessed answer.
- [ ] Create a “Domain 3 final cram sheet.”

#### Decision

- If Domain 3 is **80%+**, move forward.
- If Domain 3 is **below 80%**, repeat weakest Domain 3 topic before starting Day 7.

---

### Day 7 — October 15 — Domain 5: Evaluation Metrics and Human Evaluation

#### Focus

- ROUGE
- BLEU
- BERTScore / semantic similarity
- human evaluation
- preference testing
- Likert scoring
- side-by-side comparison
- task-specific evaluation

#### Tasks

- [ ] Build metric comparison table.
- [ ] Do 25–30 evaluation questions.
- [ ] Write examples of when each metric is appropriate.

#### Decision rules

- Summarization overlap/recall → ROUGE.
- Translation precision → BLEU.
- Semantic similarity → BERTScore or embedding-based evaluation.
- Subjective quality/safety/helpfulness → human evaluation.
- Production comparison → A/B test or shadow/canary pattern depending the scenario.

---

### Day 8 — October 16 — Domain 5: Prompt Optimization + A/B Testing

#### Focus

- prompt versioning
- prompt management
- A/B testing
- canary release
- shadow testing
- prompt regression testing
- temperature/top-p impacts

#### Tasks

- [ ] Review prompt optimization methods.
- [ ] Create table: A/B test vs canary vs shadow deployment.
- [ ] Do 30 Domain 5 questions.
- [ ] Add missed scenario clues to weak-area register.

#### Exam patterns

- Compare two prompts with real users → A/B testing.
- Test new version with small live traffic → canary.
- Test without affecting users → shadow testing.
- Output too random → lower temperature.
- Output too repetitive/deterministic → adjust temperature/top-p carefully.

---

### Day 9 — October 17 — Domain 5: RAG Troubleshooting

#### Focus

- retrieval quality
- chunk size
- top-k
- embeddings
- re-ranking
- hallucination diagnosis
- grounding checks
- stale or irrelevant knowledge bases

#### Tasks

- [ ] Write a RAG troubleshooting flowchart.
- [ ] Do 30 RAG/troubleshooting questions.
- [ ] Review Amazon Bedrock Knowledge Bases concepts.
- [ ] Explain RAG failure modes without notes.

#### Troubleshooting order

1. Is the right content in the knowledge base?
2. Are chunks the right size and overlap?
3. Is the embedding model appropriate?
4. Is top-k retrieving enough relevant context?
5. Is re-ranking needed?
6. Is the prompt using retrieved context correctly?
7. Are grounding checks enabled?

---

### Day 10 — October 18 — Domain 5: Monitoring, Drift, and Operational Excellence

#### Focus

- CloudWatch metrics
- invocation count, latency, errors, throttling
- quality monitoring
- data drift vs concept drift
- feedback loops
- human review
- model/prompt regression

#### Tasks

- [ ] Create monitoring map: symptom → metric/log/source → action.
- [ ] Do 25–30 monitoring questions.
- [ ] Create drift flashcards.

#### Must-know distinctions

- Data drift: input distribution changes.
- Concept drift: relationship between input and correct output changes.
- Latency/errors/throttling: CloudWatch metrics and alarms.
- API audit trail: CloudTrail.
- Quality decline: evaluation dataset + human feedback + regression tests.

---

### Day 11 — October 19 — Domain 5 Checkpoint + Mixed Weak Areas

#### Tasks

- [ ] Do a timed Domain 5 quiz or 40-question focused set.
- [ ] Target: 80%+.
- [ ] Review all misses.
- [ ] Do 20 additional questions from your weakest topic.
- [ ] Create “Domain 5 final cram sheet.”

#### Decision

- If Domain 5 is **80%+**, move to full exams.
- If Domain 5 is **below 80%**, repeat weakest Domain 5 area before taking a full practice exam.

---

### Day 12 — October 20 — Full Practice Exam 1

#### Tasks

- [ ] Take one full timed practice exam.
- [ ] No notes. No pausing. Simulate the real exam.
- [ ] Target: 80%+.
- [ ] Review every wrong, guessed, and flagged question.
- [ ] Update score tracker and weak-area register.

#### Review protocol

For every missed question, write:

- why the correct answer is correct
- why your answer was wrong
- what clue in the question mattered
- what you will do differently next time

---

### Day 13 — October 21 — Remediation Day

#### Tasks

- [ ] Study only weak areas from Practice Exam 1.
- [ ] Do 50 targeted questions across weak areas.
- [ ] Re-answer missed questions from Practice Exam 1 without seeing explanations.
- [ ] Update cram sheets.

#### Target

- Weak-area quizzes should now be 80%+.

---

### Day 14 — October 22 — Full Practice Exam 2 + Readiness Decision

#### Tasks

- [ ] Take second full timed practice exam.
- [ ] Target: 80%+.
- [ ] Compare against Practice Exam 1.
- [ ] Complete readiness gates.

#### Decision rules

- **80%+ and timing good:** continue final review and sit.
- **75–79%:** sit only if weak areas are narrow and fixable by October 23.
- **Below 75%:** strongly consider postponing unless the miss pattern is obvious and correctable.

---

### Day 15 — October 23 — Final Review / Light Day

#### Tasks

- [ ] Review Domain 3 cram sheet.
- [ ] Review Domain 5 cram sheet.
- [ ] Review all flashcards created from missed questions.
- [ ] Do 20–30 light questions only; do not burn out.
- [ ] Confirm exam logistics.
- [ ] Sleep early.

#### Do not

- Do not take a brand-new full exam late at night.
- Do not cram unrelated domains.
- Do not rewrite all notes.
- Do not panic-review everything.

---

### Exam Day — October 24

#### Exam strategy

- First pass: answer what you know.
- Flag questions where two options are close.
- Do not spend too long on one question.
- Use elimination aggressively.
- For scenario questions, identify:
  - the business requirement
  - security/compliance constraint
  - operational constraint
  - AWS-native service/feature being tested

#### Final reminder

You do not need perfection. You need disciplined execution and fewer avoidable misses.

---

## High-Value Cram Sheets

### Domain 3 — Safety, Security, and Governance

| Scenario clue | Likely answer |
|---|---|
| Prevent model from discussing a business topic | Guardrails denied topics |
| Filter hate/violence/sexual/misconduct content | Guardrails content filters |
| Block exact words or phrases | Word filters |
| Detect/redact names, emails, phone numbers, financial info | Sensitive information / PII filters |
| Verify answer against retrieved context | Contextual grounding checks |
| Audit Bedrock API calls | CloudTrail |
| Monitor latency/errors/invocations | CloudWatch |
| Private access to AWS service | VPC endpoint / PrivateLink |
| Limit model invocation permissions | IAM least privilege |
| Document model purpose, limitations, and risks | Model card / governance documentation |
| High-risk output needing oversight | Human review workflow |

### Domain 5 — Evaluation, Monitoring, and Troubleshooting

| Scenario clue | Likely answer |
|---|---|
| Summarization quality by overlap/recall | ROUGE |
| Translation quality by precision | BLEU |
| Semantic similarity | BERTScore / embeddings |
| Subjective helpfulness/safety | Human evaluation |
| Compare two prompts with users | A/B testing |
| Small percentage live rollout | Canary |
| Test new version without user impact | Shadow testing |
| RAG hallucinating | Check retrieval quality first |
| Irrelevant chunks retrieved | chunking, embeddings, top-k, re-ranking |
| Output too random | Lower temperature |
| Output quality drops after adding context | Context window/noise/retrieval quality issue |
| Input distribution changes | Data drift |
| Meaning/behavior relationship changes | Concept drift |

---

## Flashcard Quick Reference

**Q: What are AWS's core Responsible AI dimensions?**  
A: Fairness, explainability, privacy and security, safety, controllability, veracity and robustness, transparency, and governance.

**Q: What are key Bedrock Guardrails controls?**  
A: Denied topics, content filters, word filters, sensitive information filters, and contextual grounding checks.

**Q: Does AWS use your Bedrock prompts to train models by default?**  
A: No. Customer inputs and outputs are not used to train AWS models by default.

**Q: What IAM action invokes a Bedrock model?**  
A: `bedrock:InvokeModel` or `bedrock:InvokeModelWithResponseStream`.

**Q: What service audits Bedrock API calls?**  
A: AWS CloudTrail.

**Q: What is indirect prompt injection?**  
A: Malicious instructions are hidden in retrieved or external content and then passed into the model through a RAG or tool workflow.

**Q: ROUGE vs BLEU?**  
A: ROUGE is commonly used for summarization recall/overlap. BLEU is commonly used for translation precision/overlap.

**Q: RAG system is hallucinating. What do you check first?**  
A: Retrieval quality: source data, chunking, embeddings, top-k, and relevance of retrieved context.

**Q: Data drift vs concept drift?**  
A: Data drift means the input distribution changed. Concept drift means the relationship between inputs and correct outputs changed.

---

## Key Resources

- [AWS Bedrock Guardrails Docs](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html)
- [AWS Responsible AI](https://aws.amazon.com/ai/responsible-ai/)
- [AIP-C01 Exam Guide](https://d1.awsstatic.com/training-and-certification/docs-generative-ai-developer-professional/AWS-Certified-Generative-AI-Developer-Professional_Exam-Guide.pdf)
- Tutorials Dojo — AIP-C01 practice exams
- Stephane Maarek / Adrian Cantrill GenAI content

---

## Related Notes

- [[AWS Generative AI Developer Pro]]
- [[Amazon Bedrock]]
- [[RAG - Retrieval Augmented Generation]]
- [[AWS Certifications]]
