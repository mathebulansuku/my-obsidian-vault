---
type: kubestronaut-template
template_for: kubestronaut-daily
templater: true
tags:
  - kubestronaut
  - template
  - templater
---

<%*
const title = tp.file.title;
const match = title.match(/^(\d{4}-\d{2}-\d{2}) - Kubernetes - (.*)$/);
const date = match ? match[1] : tp.date.now("YYYY-MM-DD");
const topic = match ? match[2] : "Topic name";
const cert = "KCNA";
const nextReview = window.moment(date).add(1, "days").format("YYYY-MM-DD");
%>---
type: kubestronaut-daily
date: <%= date %>
certification: <%= cert %>
topic: <%= topic %>
status: not-started
planned_minutes: 120
actual_minutes: 0
study_minutes: 0
lesson_completed: false
lab_completed: false
recall_completed: false
confidence: 0
mock_score:
weak_areas: []
review_interval_days: 1
next_review: <%= nextReview %>
tags:
  - kubestronaut
  - daily-learning
  - kubernetes
  - <%= cert.toLowerCase() %>
---

## 07:00–07:30 — KodeKloud Learning

### Assigned topic

<%= topic %>

### Verified course reference

- KodeKloud Kubestronaut path
- Exact lesson reference: verify before starting

### Learning objectives

- 

### Theory notes


### Links to concepts

- [[<%= topic %>]]
- [[Knowledge Base Dashboard]]
- [[kubectl Command Reference]]
- [[<%= cert %> Tracker]]
- [[Learning Roadmap]]

### Tasks

- [ ] Complete today's KodeKloud lesson #kubestronaut #<%= cert.toLowerCase() %> 📅 <%= date %>

## 07:30–08:15 — Hands-on Labs

### Assigned practical exercise


### Lab prerequisites

- Kubernetes lab environment or local cluster

### Commands

```bash
# Add commands here
```

### Expected results

- 

### Actual results

- 

### Completion checklist

- [ ] Complete today's Kubernetes lab #kubestronaut #lab #<%= cert.toLowerCase() %> 📅 <%= date %>
- [ ] Document commands and findings #kubestronaut #lab 📅 <%= date %>

## 08:15–08:45 — Engineering Challenges

### Troubleshooting exercise


### Root cause analysis


### Production scenario


### Lessons learned

- 

## 08:45–09:00 — Active Recall

### Five recall questions

1. 
2. 
3. 
4. 
5. 

### Feynman explanation


### Confidence rating

Confidence: 0/5

### Flashcards to create

- [ ] Create at least one flashcard from today's topic #kubestronaut #review 📅 <%= date %>

### Revision date

<%= nextReview %>

### Weak areas

- 

### Review protocol

- If confidence is 0–1, review again in 1 day.
- If confidence is 2, review again in 3 days.
- If confidence is 3, review again in 7 days.
- If confidence is 4, review again in 14 days.
- If confidence is 5, review again in 30 days.

### Tasks

- [ ] Answer active recall questions #kubestronaut #review #<%= cert.toLowerCase() %> 📅 <%= date %>
- [ ] Update confidence rating after recall attempt #kubestronaut #review 📅 <%= date %>
- [ ] Set next_review using [[Review Protocol]] #kubestronaut #review 📅 <%= date %>
- [ ] Record actual study time #kubestronaut 📅 <%= date %>

## Weekly review link

- [[Weekly Review Dashboard]]
