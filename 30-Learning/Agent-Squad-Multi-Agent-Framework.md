---
created: 2026-06-30
type: note
tags: [ai, multi-agent, aws, bedrock, agent-squad, fundani-ai]
source: openclaw
---

# Agent Squad - Multi-Agent Orchestration Framework

## Summary

Agent Squad (formerly Multi-Agent Orchestrator) is an open-source framework by AWS for building and orchestrating multi-agent AI systems. Instead of one agent doing everything, it routes user requests to the best-suited specialist agent.

## Key Points

- **Orchestrator** — The brain. Receives user input, classifies intent, and routes to the right agent
- **Agents** — Specialized workers, each with their own tools, prompts, and LLM (e.g., tutor agent, quiz agent, billing agent)
- **Classifiers** — Determine which agent best matches the request using embeddings/semantic similarity or an LLM classifier
- **Storage** — Conversation history maintained per-agent and per-user so context persists across turns

## How It Works (Flow)

```
User Input → Orchestrator → Classifier → Best Agent → Response
                                ↓
                        (with conversation history)
```

## Supported Agent Types

- Amazon Bedrock agents
- LangChain agents
- Custom agents (bring your own)
- OpenAI-compatible agents

## Examples

- A customer support system with separate agents for billing, tech support, and returns
- Fundani-AI: tutor agent + quiz agent + summarizer agent all orchestrated seamlessly
- A coding assistant with agents specializing in different languages or tasks

## Flashcards

**Q: What is Agent Squad?**
A: An open-source AWS framework for orchestrating multiple specialized AI agents, routing requests to the best-suited agent.

**Q: What does the Orchestrator do in Agent Squad?**
A: Receives user input, classifies intent using a classifier, and routes the request to the most appropriate specialist agent.

**Q: What is the role of the Classifier in Agent Squad?**
A: Determines which agent best matches the user's request using embeddings, semantic similarity, or an LLM.

**Q: What agent types does Agent Squad support?**
A: Amazon Bedrock agents, LangChain agents, custom agents, and OpenAI-compatible agents.

## Feynman Explanation

Imagine a hospital. When you walk in, a triage nurse (the Orchestrator) figures out what's wrong and sends you to the right specialist — cardiologist, orthopedist, neurologist. Each doctor (agent) is an expert in their domain. Agent Squad does the same for AI: one smart router, many specialist agents.

## Practical Application

- **Fundani-AI / StudyVerse:** Route student queries to a tutor agent, flashcard agent, or quiz agent based on intent
- **Cloud Consulting Group:** Route client questions to cost optimization, migration, or AI enablement agents
- Deployable on AWS Lambda or containers — fits the existing AWS/Bedrock stack perfectly
- Open source — can self-host and customize

## Related Notes

- [[AWS Bedrock]]
- [[Fundani-AI]]
- [[Multi-Agent Systems]]
