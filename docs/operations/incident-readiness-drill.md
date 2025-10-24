---
title: Incident Readiness Drill
template_type: operations
audience: ops, sre, engineering
usage: "Plan and execute incident rehearsal drills to verify preparedness."
synced_issue_template: ""
status: canonical
---

# Incident Readiness Drill: {drill_name}

<!--
Stress-test your incident response muscle memory before production does it for you.
-->
## Drill Snapshot

- **Date / Time:** {scheduled_datetime_timezone}
- **Scenario Owner:** {name_handle}
- **Facilitator / Observer:** {name_handle}
- **Scope:** {service_or_system}
- **Objectives:** {primary_goals} _(Examples: SEV0—full failover validation; SEV1—pager handoff timing; SEV2—runbook clarity)_

## Scenario Setup

- **Stimulus:** {trigger_event_description}
- **Expected Signals:** {alerts_metrics_logs}
- **Mocks / Stubs Required:** {dependencies}
- **Prep Checklist:**
  - [ ] Access confirmed (Dashboards, PagerDuty, Logs)
  - [ ] Comms channels created `{channel}`
  - [ ] Runbook links shared
  - [ ] Safety stop / abort criteria defined

## Participants

| Role | Primary | Backup | Notes |
| --- | --- | --- | --- |
| Incident Commander | {name} | {name} | {notes} |
| Communications | {name} | {name} | {notes} |
| Operations | {name} | {name} | {notes} |
| Observers | {names} | — | {notes} |

## Drill Timeline

| Time (TZ) | Event | Owner | Notes |
| --- | --- | --- | --- |
| {hh:mm} | Kickoff & briefing | {owner} | {details} |
| {hh:mm} | Trigger injected | {owner} | {details} |
| {hh:mm} | Detection | {owner} | {details} |
| {hh:mm} | Containment | {owner} | {details} |
| {hh:mm} | Recovery | {owner} | {details} |

## Success Criteria

- [ ] Detection time within {target_minutes}
- [ ] Roles acknowledged within {target_minutes}
- [ ] Runbook followed (link {runbook})
- [ ] Comms updates posted every {interval}
- [ ] Post-drill survey completed

## Observations

- **What Worked:** {wins}
- **Gaps / Friction:** {gaps}
- **Tooling Notes:** {followups}

## Actions & Follow-up

- [ ] {action_item} — owner {name} — due {date}
- [ ] {action_item} — owner {name} — due {date}
- [ ] Schedule next drill ({cadence})

## Debrief Artifacts

- Recording / Notes: {link}
- Chat Transcript: {link}
- Metrics Dashboard Snapshot: {link}
