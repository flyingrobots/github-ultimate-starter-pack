---
title: Feature Spec
template_type: specification
audience: product, engineering, design
usage: "Translate a product idea into an implementation-ready specification."
synced_issue_template: ""
status: canonical
---


# Feature Spec: {feature_name}

<!--
Translate a product idea into an implementation-ready spec.
-->
## Summary

{elevator_pitch_and_problem_statement}

## Goals & Non-Goals

- **Goals:**
  - {goal_one}
  - {goal_two}
  - {...}
- **Non-Goals:**
  - {non_goal_one}
  - {...}

## User Personas & Scenarios

| Persona | Scenario | Need | Success Criteria |
| --- | --- | --- | --- |
| {persona} | {scenario} | {need} | {success} |
| {...} | {...} | {...} | {...} |

## Requirements

### Functional Requirements

- [ ] {requirement}
- [ ] {...}

### Non-Functional Requirements

- {performance_reliability_accessibility}
- {...}

## User Experience

- **Flows:** {link_to_figma_or_flowcharts}
- **Wireframes / Mockups:** {links}
- **States:** {empty_loading_error_success_notes}

## System Design Notes

- **Architecture Impact:** {services_modules}
- **Data Model Changes:** {schemas_migrations}
- **APIs:** {new_or_updated_endpoints} _(inline schema here if short; otherwise link to `/api/schemas/{name}.yaml`)_
- **Integrations:** {third_party_or_internal}

## Analytics & Metrics

- **Primary KPIs:** {metric_targets}
- **Instrumentation Plan:** {events_properties}
- **Experimentation Plan:** {flag_ab_test_details}

## Rollout Strategy

- **Launch Phases:** {alpha_beta_ga}
- **Feature Flag:** {name}
- **Comms Plan:** {internal_external}

## Risks & Mitigations

- **Risk:** {description}
  - **Mitigation:** {plan}
- **Risk:** {description}
  - **Mitigation:** {plan}

## Open Questions

- {question}
- {...}

## Appendices

- {links_to_docs}
- {research_notes}
