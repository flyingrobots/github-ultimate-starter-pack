---
title: Analytics Deep Dive
template_type: analysis
audience: product, data, analytics
usage: "Structure data investigations to surface insights and recommendations."
synced_issue_template: ""
status: canonical
---


# Analytics Deep Dive: {topic}

<!--
Structure a data investigation so findings translate to decisions.
-->
## Objective

- **Business Question:** {question}
- **Success Metric / KPI:** {metric}
- **Timeframe Analyzed:** {date_range}

## Data Sources

| Source | Tables / Views | Notes |
| --- | --- | --- |
| {warehouse_or_tool} | {tables} | {refresh_latency_quality} |
| {...} | {...} | {...} |

## Methodology

- {query_or_model_used}
- {segmentation_or_filters}
- {statistical_tests_or_approach}

## Key Findings

- **Finding:** {headline}
  - **Evidence:** {numbers_reference}
- **Finding:** {headline}
  - **Evidence:** {numbers_reference}

## Visuals & Tables

- Chart: {link_or_embed}
- Table: {link}
- Dashboard: {link}

## Interpretation

- **What the data suggests:** {insight}
- **Limitations / Caveats:** {caveat}
- **Potential Biases:** {bias}

## Recommendations

- [ ] {recommended_action_owner_timeline}
- [ ] {...}

## Follow-up Analyses

- {future_question}
- {...}

## Appendix

- SQL / Notebook: {link} _(e.g., `/analytics/templates/deep-dive.sql`)_
- Raw exports: {storage_location}
