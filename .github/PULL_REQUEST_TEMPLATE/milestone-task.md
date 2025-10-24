---
name: Milestone task PR
about: Advance milestone work with dependency tracking and verification plan.
title: "Milestone: {milestone_name}"
labels:
  - milestone
assignees: []
---


# PR: Milestone Task — {milestone_name}

<!--
For milestone-driven work that spans multiple contributors.
Highlight dependencies, testing coverage, and release readiness.
-->
## Summary

{overview_of_scope_and_objective}

## Milestone Context

- **Milestone:** {link_or_name}
- **Due Date:** {date}
- **Milestone Goals:** {goals_reference}
- **Previous Work:** {links_to_prs_or_docs}
- **Milestone Health:** {on_track|at_risk|needs_help}

## Change Details

- {notable_change_or_module}
- {notable_change_or_module}
- {...}

## Dependencies

- [ ] Backend merged (PR #{id})
- [ ] Frontend behind flag `{flag}`
- [ ] Docs / enablement ready
- [ ] External approvals (security, legal, etc.)

## Testing & Verification

- [ ] Unit tests
- [ ] Integration / contract tests
- [ ] End-to-end / UI tests
- [ ] Manual acceptance (owner {name})
- **Test Evidence:** {links_to_runs}

## Deployment Plan

- **Target Release:** {release_window}
- **Feature Flag Strategy:** {strategy}
- **Migration / Data Backfill:** {details_or_na}

## Risks & Mitigations

- **Risk:** {description}
  - **Mitigation:** {plan}
- **Risk:** {description}
  - **Mitigation:** {plan}

## Checklist

- [ ] All milestone tasks scoped
- [ ] Stakeholders notified of changes
- [ ] Telemetry / dashboards updated
- [ ] Documentation prepared for release
