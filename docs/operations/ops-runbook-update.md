---
title: Ops Runbook Update
template_type: operations
audience: ops, sre, engineering
usage: "Track updates to operational procedures, triggers, and validation."
synced_issue_template: ""
status: canonical
---


# Ops Runbook Update: {service_or_process}

<!--
Track changes to operational playbooks so on-call teams stay current.
-->
## Summary

- **Runbook URL:** {link}
- **Version / Revision Date:** {date}
- **Author:** {name_handle}
- **Reviewers:** {ops_sre_sec}

## Change Overview

- {description_of_change}
- {reason_for_change}
- {impact_summary}
- **Reference Diff / PR:** {link_to_change}

## Updated Procedures

| Scenario | Previous Steps | New Steps | Owner |
| --- | --- | --- | --- |
| {scenario} | {old_steps} | {new_steps} | {name} |
| {...} | {...} | {...} | {...} |

## Triggers & Alerts

- **Detection Signals:** {metrics_alerts_log_queries}
- **Escalation Path:** {pager_oncall_schedule}
- **Run Constraints:** {maintenance_windows_dependencies}

## Validation

- [ ] Dry run completed (date {date})
- [ ] Monitoring updated
- [ ] On-call handbook updated
- [ ] Stakeholders notified

## Rollout Plan

- **Effective Date:** {date}
- **Training / Enablement:** {sessions_links}
- **Fallback Plan:** {how_to_revert_to_previous_process}

## Appendices

- Related incidents: {links}
- Supporting docs: {links}
