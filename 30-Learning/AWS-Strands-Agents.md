---
created: 2026-06-29
type: learning-note
tags: [aws, strands, agents, agentic-ai, bedrock, genai]
source: openclaw
---

# AWS Strands Agents

## Summary
AWS Strands Agents is an open-source Python SDK (released May 2025) for building AI agents on AWS. It combines a model, tools, and a system prompt into an agent that reasons and acts in a loop until a task is complete. It is the simplest AWS-native way to build production agentic AI.

## Key Points
- Built around the ReAct loop: Reason → Act → Observe → Repeat
- Supports all AWS Bedrock models (Claude, Titan, Llama, etc.)
- Tools are plain Python functions decorated with `@tool` — docstrings tell the model when to use them
- Supports multi-agent patterns: agents can call other agents as tools
- Ships with `strands-tools` package: calculator, python_repl, file_read/write, http_request, shell, retrieve, image_reader
- Stateless by default — memory requires session managers or Bedrock Knowledge Bases

## Core Pattern
```python
from strands import Agent
from strands_tools import calculator

agent = Agent(
    model="us.anthropic.claude-3-7-sonnet-20250219-v1:0",
    tools=[calculator],
    system_prompt="You are a helpful assistant."
)

agent("What is 2,847 × 3,921?")
```

## Custom Tool Pattern
```python
@tool
def get_weather(city: str) -> str:
    """Get current weather for a city."""
    return call_weather_api(city)
```

## Multi-Agent Architecture
```
Orchestrator Agent
    ├── Research Agent (tool)
    ├── Writer Agent (tool)
    └── Review Agent (tool)
```

## Feynman Explanation
Strands is like hiring a smart intern (the model) and giving them a toolbox (tools). You give them a task, they pick the right tool, do the work, check the result, and keep going until the job is done. You don't have to tell them every step — they figure it out.

## Comparison
| Feature | Strands | LangChain |
|---------|---------|-----------|
| AWS-native | ✅ | Partial |
| Complexity | Low | High |
| Bedrock integration | Native | Via plugin |
| Production-ready | ✅ | ✅ |

## Flashcards
Q: What is AWS Strands Agents?
A: An open-source Python SDK from AWS for building AI agents using Bedrock models, tools, and a system prompt in a reasoning loop.

Q: What loop does a Strands agent use?
A: The ReAct loop — Reason, Act, Observe, repeat until the task is complete.

Q: How do you define a custom tool in Strands?
A: Use the `@tool` decorator on a Python function. The docstring tells the model when and how to use it.

Q: How does Strands handle memory?
A: It is stateless by default. Persistent memory requires session managers or Bedrock Knowledge Bases.

Q: What is a multi-agent pattern in Strands?
A: An orchestrator agent that calls specialised sub-agents as tools — each handles a specific part of the task.

## Practical Application
- **GenAI exam**: Agentic AI and Bedrock Agents are in the exam blueprint
- **Fundani.ai**: Use Strands to build the AI tutor agent
- **CCG**: Position AI enablement services using Strands + Bedrock
- **Content**: "I built an AI agent with AWS Strands" = strong LinkedIn post

## Related Notes
- [[AWS Bedrock - Foundation Models]]
- [[EventBridge - Decoupled Architecture]]
- [[RAG - Retrieval Augmented Generation]]
- [[Agentic AI Patterns]]
