---
name: Version release plan
description: Plan and track releases with ownership, readiness, and rollout details.
title: "Release: {version_tag}"
labels:
  - release
  - needs-triage
assignees: []
---


# Version Release: {version_tag}

<!--
Drive a smooth, predictable release. Track ownership, readiness, rollout, and comms.
-->
## Release Snapshot

- **DRI:** {primary_owner}
- **Backup:** {secondary_owner}
- **Release Window:** {start_date} → {end_date}
- **Target Environments:** {staging_prod_regions}
- **Communication Channel:** {slack_channel_mail_list}

## Change Highlights

- {headline_change_with_link}
- {headline_change_with_link}
- {...}

## Changelog Sources

- [ ] Product-facing release notes drafted
- [ ] Engineering changelog (`CHANGELOG.md` / auto-gen) ready
- [ ] Breaking changes documented

## Readiness Checklist

- [ ] Code freeze in effect (if applicable)
- [ ] All blocking issues closed or deferred with approval
- [ ] QA / UAT sign-off received (link to evidence)
- [ ] Performance / load tests passed
- [ ] Security review completed
- [ ] Localisation / accessibility review complete

## Rollout Plan

| Phase | Environment | Owner | Start | End | Notes |
| --- | --- | --- | --- | --- | --- |
| {phase_one} | {env} | {name} | {date_time} | {date_time} | {details} |
| {phase_two} | {env} | {name} | {date_time} | {date_time} | {details} |
| {...} | {...} | {...} | {...} | {...} | {...} |

## Validation Plan

- **Smoke Tests:** {suite_links}
- **Monitoring Dashboards:** {urls}
- **Alert Thresholds:** {metrics_and_limits}
- **Rollback Trigger:** {quantitative_or_qualitative_threshold}
- **Rollback Owner & Command:** {name} — `{rollback_command_or_runbook_link}`

## Dependencies

- [ ] Database migrations reviewed & scheduled (owner {name})
- [ ] Feature flags staged (list {flags})
- [ ] Third-party coordination (vendor / partner contact)

## Communication Plan

- [ ] Internal announcement draft (owner {name})
- [ ] External announcement draft (blog, newsletter, status page)
- [ ] Customer success briefed
- [ ] Support runbook updated

## Post-Release Checklist

- [ ] Metrics reviewed at {time_after_release}
- [ ] Incident / anomalies logged
- [ ] Release retro scheduled
- [ ] Rollback (if triggered) completed & documented

## Notes & Open Questions

{additional_context}
