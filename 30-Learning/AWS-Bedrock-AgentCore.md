---
created: 2026-06-29
type: learning-note
tags: [aws, bedrock, agentcore, agents, agentic-ai, genai]
source: openclaw
---

# AWS Bedrock AgentCore

## Summary
Bedrock AgentCore is AWS's fully managed runtime and tooling layer for deploying production AI agents. It handles execution, memory, identity, tool connectivity, code interpretation, and browser control — so you focus on building the agent, not the infrastructure.

## Key Points
- AgentCore Runtime: managed execution environment — scales automatically, isolated containers, built-in logging
- AgentCore Memory: short-term (session) + long-term (semantic/vector) memory across conversations
- AgentCore Identity: IAM-based per-agent identity with least-privilege permissions and audit trail
- AgentCore Gateway: connects agents to external APIs/tools (OAuth, Salesforce, Jira, Slack) without hardcoded credentials
- AgentCore Code Interpreter: sandboxed Python execution — agent can write and run code safely
- AgentCore Browser: headless browser — agent can navigate sites, extract data, fill forms

## Architecture
```
User Request
     ↓
AgentCore Runtime (executes agent loop)
     ├── AgentCore Memory (context + history)
     ├── AgentCore Identity (permissions)
     ├── AgentCore Gateway (external tools/APIs)
     ├── AgentCore Code Interpreter (Python execution)
     └── AgentCore Browser (web interaction)
     ↓
Response to User
```

## AgentCore vs Bedrock Agents
| Feature | Bedrock Agents | Bedrock AgentCore |
|---------|---------------|-------------------|
| Setup | Console-based, low-code | Code-first (Strands SDK) |
| Flexibility | Limited to AWS tools | Any tool, any API |
| Memory | Basic session context | Full short + long-term memory |
| Identity | Service role | Per-agent identity |
| Code execution | ❌ | ✅ Sandboxed Python |
| Browser | ❌ | ✅ Headless browser |
| Best for | Simple Q&A agents | Complex production agents |

## Feynman Explanation
Bedrock Agents is like hiring a contractor who only uses tools from your warehouse. AgentCore is like hiring a fully equipped professional who brings their own tools, remembers every job they've done for you, has their own ID badge with exact access rights, and can even browse the internet and run code safely. Same job — very different capability.

## Flashcards
Q: What is Bedrock AgentCore?
A: AWS's fully managed runtime for deploying production AI agents — handles execution, memory, identity, tools, code, and browser.

Q: What are the two types of AgentCore Memory?
A: Short-term (session memory — context within a conversation) and long-term (semantic memory — facts stored across sessions using vector embeddings).

Q: What does AgentCore Identity provide?
A: An IAM-based identity per agent with least-privilege permissions and a full audit trail of every action.

Q: What is AgentCore Gateway used for?
A: Connecting agents to external APIs and tools (OAuth, Salesforce, Jira, Slack) without hardcoded credentials.

Q: What is the key difference between Bedrock Agents and AgentCore?
A: Bedrock Agents is low-code/console-based with limited tools. AgentCore is code-first, fully flexible, with persistent memory, per-agent identity, code execution, and browser access.

## Exam Traps
- AgentCore ≠ Bedrock Agents — different products
- Memory has two tiers — session vs semantic/long-term
- Identity is per-agent IAM — not your user identity
- Code Interpreter is sandboxed — no implicit access to AWS resources

## Practical Application
- **Fundani.ai**: AgentCore Runtime + Memory = AI tutor that remembers each student's progress across sessions
- **CCG**: Deploy production agents for clients as a premium "AI enablement" service
- **GenAI exam**: Agentic AI infrastructure is testable — know all 6 components

## Related Notes
- [[AWS Strands Agents]]
- [[AWS Bedrock - Foundation Models]]
- [[RAG - Retrieval Augmented Generation]]
- [[Agentic AI Patterns]]
