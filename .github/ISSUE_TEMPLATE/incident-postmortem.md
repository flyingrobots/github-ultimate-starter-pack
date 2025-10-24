---
name: Incident postmortem
description: Document incidents with impact, timeline, root cause, and corrective actions.
title: "Postmortem: {incident_name}"
labels:
  - incident
  - postmortem
assignees: []
---


# Incident Postmortem: {incident_name}

<!--
Capture what happened, why it happened, and how we prevent it from happening again.
Keep sections concise and evidence-backed.
-->
## Incident Snapshot

- **Severity:** {sev0|sev1|sev2|sev3}
- **Start:** {start_date_time_timezone}
- **End:** {end_date_time_timezone}
- **Duration:** {hours_minutes}
- **Affected Systems / Users:** {scope}
- **Status:** {resolved|mitigated|monitoring}

## Summary

{one_paragraph_plain_language_overview}

## Timeline

| Time (TZ) | Event | Owner | Notes |
| --- | --- | --- | --- |
| {timestamp} | {what_happened} | {name} | {details} |
| {...} | {...} | {...} | {...} |

## Impact Analysis

- **User Impact:** {user-facing_consequence}
- **Business Impact:** {revenue_costs_reputation}
- **Technical Impact:** {systems_services_data}
- **Incident Detection:** {how_detected_and_by_whom}

## Root Cause

- **Primary Cause:** {underlying_issue}
- **Contributing Factors:** {factors}
- **Why Existing Safeguards Failed:** {reason}

## Response Evaluation

- **What Went Well:**
  - {strength}
  - {...}
- **What Went Poorly:**
  - {gap_or_issue}
  - {...}

## Corrective Actions

| Category | Action | Owner | Priority | Due Date | Status |
| --- | --- | --- | --- | --- | --- |
| Immediate | {action} | {name} | {p0|p1|p2} | {date} | {state} |
| Preventative | {action} | {name} | {p0|p1|p2} | {date} | {state} |
| Detection | {action} | {name} | {p0|p1|p2} | {date} | {state} |

## Follow-up

- [ ] Retrospective scheduled (date {date})
- [ ] Stakeholders notified
- [ ] Documentation updated (runbooks, playbooks)
- [ ] Monitoring / alerting improvements deployed

## Appendices

- Export timelines / dashboards as images or PDFs and attach them here for offline archives.
- Incident channel transcript: {link}
- Dashboards & graphs: {links}
- Related tickets: {links}
