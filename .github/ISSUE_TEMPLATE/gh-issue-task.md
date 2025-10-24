---
name: Delivery task
description: Provide everything an assignee needs to execute a scoped task.
title: "[{ticket_id}] {concise_title}"
labels:
  - task
assignees: []
---

<!--
Leave space for notes, open questions, or follow-ups uncovered during grooming or implementation.
-->
## Additional Notes

{additional_context}

# [{ticket_id}] {concise_title}

<!--
Provide a focused summary of the problem or feature.
Aim for one or two sentences that explain the "why" at a glance.
-->
## Overview

{overview}

<!--
Link every source of truth the assignee may need: designs, specs, analytics, feature flags.
Remove rows that do not apply.
-->
## References & Assets

- [ ] Figma / Design: {link}
- [ ] Product Spec (Notion / Confluence): {link}
- [ ] Related Issues / PRs: {links}
- [ ] Feature Flags / Experiments: {links}
- [ ] Other Assets: {links}

<!--
Capture the intent from the user's perspective.
-->
## User Story

As a **{stakeholder}**,
I want **{desired_behavior}**,
so that **{desired_outcome}**.

<!--
Observable, user-facing conditions that must be true for completion.
Write in GIVEN / WHEN / THEN form when useful.
-->
## Acceptance Criteria

- [ ] {criteria_from_stakeholder_perspective}
- [ ] {...}

<!--
Anything required for sign-off (QA cases, docs, analytics) belongs here.
-->
## Definition of Done

{definition_of_done}

<!--
Clarify the boundaries so the team knows what to tackle now versus later.
-->
## Scope

### In-Scope

- {in_scope_item}
- {...}

### Out-of-Scope

- {out_of_scope_item}
- {...}

### Deliverables

- **Est. Lines of Code:** {estimated_loc}
- **Est. Blast Radius:** {expected_modules_files_dirs}

<!--
Describe the implementation approach before coding starts.
-->
## Implementation Details

<details>
<summary>Implementation planning (collapse for routine work or switch to `quick-task.md`).</summary>


### High-Level Approach

{high_level_details}

### Affected Areas

- {module_file_directory}
- {...}

### Implementation Steps

- [ ] {step_one}
- [ ] {step_two}
- [ ] {...}
</details>

<!--
Spell out how the change will be verified.
Keep the checklists actionable.
-->
## Test Plan

<details>
<summary>Verification matrix (skip for simple tasks by using the `quick-task.md` template).</summary>


### Happy Path

- [ ] {happy_path_case}
- [ ] {...}

### Edge Cases

- [ ] {edge_case}
- [ ] {...}

### Failure Cases

- [ ] {failure_case}
- [ ] {...}

### Monitoring & Success Metrics

- [ ] {alerting_dashboards_kpis}
- [ ] {...}

### QA Sign-off Matrix

| Environment | Surface (browser / device / API) | Owner | Status | Notes |
| --- | --- | --- | --- | --- |
| {environment} | {surface} | {owner} | {status} | {notes} |
| {...} | {...} | {...} | {...} | {...} |
</details>

<!--
List hard blockers first (must-haves), then nice-to-haves.
Include sequencing, external teams, or release gates.
-->
## Requirements

### Hard Requirements

- {hard_requirement}
- {...}

### Soft Requirements

- {soft_requirement}
- {...}

### Runtime Requirements

- {runtime_requirement_with_exclusivity}
- {...}

### Dependencies & Approvals

- [ ] {database_migrations_feature_flags_contracts}
- [ ] {security_privacy_review}
- [ ] {...}

---

<!--
Capture planning inputs for prioritisation and scheduling.
Scores typically use a 0-4 or 1-5 scale—pick one and stick to it.
-->
## Production Notes

### Priority: {priority_score} / 5

{priority_rationale}

### Complexity: {complexity_score} / 5

{complexity_rationale}

### Estimate: {low_end_hours} - {high_end_hours} hours

{estimate_rationale}

### Risk & Rollback

- **Primary Risks:** {what_can_go_wrong}
- **Mitigations:** {mitigation_plan}
- **Rollback / Kill Switch:** {rollback_strategy_or_flag}
