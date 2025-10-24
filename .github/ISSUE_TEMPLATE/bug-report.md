---
name: Bug report
description: Capture broken experiences, impact, and reproduction details.
title: "[Bug]: {concise_title}"
labels:
  - bug
  - needs-triage
assignees: []
---


# Bug Report: {concise_title}

<!--
Capture the broken experience, who it hurts, and how to fix it fast.
Erase any guidance that does not apply once filled.
For cosmetic nits or copy tweaks, switch to `bug-report-lite.md` so contributors aren’t buried in checklists.
-->
## Summary

{one_sentence_summary_of_the_problem}

## Impact

- **Severity:** {blocker|critical|major|minor}
- **Frequency:** {rare|intermittent|frequent}
- **Users Affected:** {segments_or_counts}
- **First Observed:** {date_time}

## Environment

| Aspect | Details |
| --- | --- |
| App Version | {version_tag_or_commit} |
| Platform | {os_browser_device} |
| Environment | {prod|staging|dev} |
| Feature Flags | {enabled_flags} |

## Regression?

- [ ] Yes (worked in {last_known_good_version})
- [ ] No / Unknown
- **Evidence:** {links_or_notes}

## Steps to Reproduce

1. {step_one}
2. {step_two}
3. {step_three}

## Expected Behavior

{expected_behavior}

## Actual Behavior

{actual_behavior}

## Logs / Screenshots / Videos

- [ ] Screenshot: {link_or_path}
- [ ] Video / Replay: {link_or_path}
- [ ] Logs / Trace: `{path_or_snippet}`
- [ ] Other Evidence: {link_or_notes}

## Workarounds

{known_workaround_or_none}

## Additional Context

{related_issues_metrics_notes}

## Triage Notes

- **Owner:** {assignee}
- **Status:** {new|investigating|blocked|ready_for_fix|fixed}
- **Next Action:** {who_does_what_by_when}

## Fix Checklist

- [ ] Root cause identified and documented
- [ ] Automated tests added or updated
- [ ] Monitoring / alerts in place
- [ ] Docs / runbooks updated
- [ ] Release & rollback plan confirmed
