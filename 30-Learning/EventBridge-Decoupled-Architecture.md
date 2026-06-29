---
created: 2026-06-28
type: learning-note
tags: [aws, eventbridge, architecture, serverless, decoupling]
source: openclaw
---

# EventBridge — Decoupled Architecture

## Summary
EventBridge is useful because it lets producers and consumers be decoupled. Producers emit events without knowing who consumes them, and consumers react to events without knowing who produced them.

## Key Points
- Producers and consumers have no direct dependency on each other
- EventBridge acts as the event bus — routes events based on rules
- Enables loosely coupled, highly scalable event-driven architectures
- Supports AWS services, custom apps, and SaaS integrations as event sources

## Examples
- An e-commerce app: Order service emits `order.placed` event → EventBridge routes it to Inventory, Notifications, and Analytics services independently
- Lambda triggered by S3 upload event via EventBridge rule
- Cross-account event routing using event buses

## Feynman Explanation
Imagine a radio station (producer) broadcasting on a frequency. Anyone with a radio tuned to that frequency (consumers) can listen — but the station doesn't know who's listening, and the listeners don't control the broadcast. EventBridge is the frequency.

## Flashcards
Q: Why is EventBridge described as "decoupled"?
A: Because producers emit events without knowing who consumes them, and consumers react without knowing who produced them. They communicate through the event bus, not directly.

Q: What is the core component that routes events in EventBridge?
A: Event rules — they match incoming events based on patterns and route them to targets.

Q: Name 3 valid EventBridge event sources.
A: AWS services (e.g. S3, EC2), custom applications, and SaaS providers (e.g. Zendesk, Datadog).

## Practical Application
Useful in SRE/LexisNexis context for: decoupling microservices, triggering automation on infrastructure events, cross-account event-driven workflows.

## Related Notes
- [[Lambda - Serverless Functions]]
- [[SQS vs SNS vs EventBridge]]
- [[Serverless Architecture Patterns]]
