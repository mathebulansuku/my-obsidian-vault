---
type: kubestronaut-dashboard
created: 2026-10-08
plugin_integration:
  - tasks
tags:
  - kubestronaut
  - dashboard
  - tasks
---

## Task dashboard

> [!info] Purpose
> This dashboard uses the Tasks plugin to surface actionable Kubestronaut work. It does not change task status automatically.

## Today's tasks

```tasks
not done
path includes Kubestronaut
due today
sort by path
```

## Overdue tasks

```tasks
not done
path includes Kubestronaut
due before today
sort by due
```

## Upcoming tasks — next 7 days

```tasks
not done
path includes Kubestronaut
due after today
due before in 8 days
sort by due
```

## Certification tasks

```tasks
not done
path includes Kubestronaut
(tags include #kcna) OR (tags include #cka) OR (tags include #ckad) OR (tags include #kcsa) OR (tags include #cks)
group by tags
sort by due
```

## Lab backlog

```tasks
not done
path includes Kubestronaut
tags include #lab
sort by due
```

## Weekly review tasks

```tasks
not done
path includes Kubestronaut/08 - Weekly Reviews
tags include #weekly-review
sort by due
```

## Monthly review tasks

```tasks
not done
path includes Kubestronaut/08 - Weekly Reviews
tags include #monthly-review
sort by due
```

## Maintenance and cleanup tasks

```tasks
not done
path includes Kubestronaut
(tags include #maintenance) OR (tags include #cleanup) OR (tags include #hygiene)
sort by due
```

## Exam readiness tasks

```tasks
not done
path includes Kubestronaut
tags include #exam-readiness
sort by due
```

## Integration and operating manual tasks

```tasks
not done
path includes Kubestronaut/00 - Command Center
(tags include #integration) OR (tags include #operating-manual) OR (tags include #start-here)
sort by due
```

## Task conventions

Use standard Markdown task syntax with Tasks plugin date emojis:

```markdown
- [ ] Complete today's KodeKloud lesson #kubestronaut #kcna 📅 2026-10-09
- [ ] Complete today's Kubernetes lab #kubestronaut #lab 📅 2026-10-09
- [ ] Document commands and findings #kubestronaut 📅 2026-10-09
- [ ] Answer active recall questions #kubestronaut #review 📅 2026-10-09
- [ ] Record actual study time #kubestronaut 📅 2026-10-09
```

## Rules

- Do not assign normal study tasks to university exam exclusion dates.
- Do not mark tasks complete unless the work was actually completed.
- Prefer due dates for tasks that must be done on a study date.
- Use scheduled dates only when you intentionally want a task to appear before it is due.
