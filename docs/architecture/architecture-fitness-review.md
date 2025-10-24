---
title: Architecture Fitness Review
template_type: architecture
audience: engineering, architecture, platform
usage: "Assess system health across performance, resilience, and maintainability."
synced_issue_template: ""
status: canonical
---

# Architecture Fitness Review: {system_or_domain}

<!--
Use quarterly or milestone checkpoints to keep architecture debt visible and actionable.
-->
## Overview

- **Review Date:** {date}
- **Facilitator:** {name_handle}
- **Participants:** {team_names}
- **Last Review:** {date}

## Scorecard

_Scoring guide: 1 = critical risk, 3 = meets expectations with some debt, 5 = exemplary health._

| Pillar | Score (1-5) | Trend | Notes |
| --- | --- | --- | --- |
| Performance | {score} | {up_down_flat} | {summary} |
| Reliability | {score} | {up_down_flat} | {summary} |
| Security | {score} | {up_down_flat} | {summary} |
| Maintainability | {score} | {up_down_flat} | {summary} |
| Cost Efficiency | {score} | {up_down_flat} | {summary} |

## Metrics Snapshot

- **p95 latency:** {value}
- **Error rate:** {value}
- **Uptime / SLO adherence:** {value}
- **Infra cost:** {value}
- **Build / deploy time:** {value}

## Risks & Constraints

- {risk_or_constraint}
- {...}

## Improvement Backlog

| Initiative | Impact | Effort | Owner | Target |
| --- | --- | --- | --- | --- |
| {item} | {high_med_low} | {t-shirt} | {owner} | {quarter} |
| {...} | {...} | {...} | {...} | {...} |

## Decisions & Trade-offs

- **Recent Decisions:** {summary_links}
- **Open Questions:** {list}
- **Areas Needing RFC:** {topics}

## Next Review

- **Date / Cadence:** {next_review}
- **Prerequisites:** {data_docs}
- **Follow-up Actions:**
  - [ ] {action_item} — owner {name} — due {date}
  - [ ] {action_item} — owner {name} — due {date}
