---
name: Bug fix PR
about: Structure bug fix PRs with root cause, fix summary, and validation.
title: "Bugfix: {concise_title}"
labels:
  - bug
assignees: []
---


# PR: Bug Fix — {concise_title}

<!--
Use for pull requests focused on resolving a defect.
Keep reviewers laser-focused on the root cause, fix, and verification.
-->
## Summary

{what_the_bug_was_and_why_it_matters}

## Linked Issues

- Closes #{issue_id}
- Related: {links}

## Root Cause

- **Trigger:** {event_or_input}
- **Underlying Cause:** {logic_state_dependency}
- **Why Tests Missed It:** {gap_in_coverage}

## Fix

- {high_level_fix_description}
- {secondary_changes_or_refactors}

## Validation

- [ ] Unit tests
- [ ] Integration tests
- [ ] Manual QA (steps {link})
- [ ] Regression suite / smoke tests
- **Evidence:** {screenshots_logs_links}

## Risk & Mitigation

- **Release Risk:** {low|medium|high}
- **Blast Radius:** {modules_components}
- **Mitigations:** {feature_flags_rollbacks_monitoring}

## Screenshots / Logs

| Scenario | Evidence |
| --- | --- |
| {before} | {link_or_embed} |
| {after} | {link_or_embed} |
| {...} | {...} |

## Checklist

 - [ ] Tests pass locally — command: `{local_test_command}` _(e.g., `npm test -- --runInBand`)_
- [ ] Added / updated documentation
- [ ] Added / updated monitoring or alerts
- [ ] Request review from `{team_or_handles}`
- [ ] Ready for release notes (if user-facing)
