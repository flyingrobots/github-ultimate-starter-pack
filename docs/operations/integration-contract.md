---
title: Integration Contract
template_type: contract
audience: engineering, ops, partners
usage: "Define expectations and responsibilities for third-party or inter-team integrations."
synced_issue_template: ""
status: canonical
---


# Integration Contract: {partner_or_system}

<!--
Define expectations for a third-party or inter-team integration.
-->
## Parties & Contacts

- **Internal Owner:** {team_name_contact}
- **External Partner / Team:** {contact_info}
- **Support / Escalation:** {channels_hours}

## Scope

- **Use Cases Covered:** {list}
- **Out of Scope:** {list}
- **Service Level Expectations:** {latency_throughput_uptime}

## Interface Details

- **Protocol / API Type:** {rest_graphql_events}
- **Auth / Security:** {oauth_keys_certificates}
- **Endpoint(s):** {urls}
- **Payload Contract:** {link_to_schema}

## Data Handling & Compliance

- **Data Categories:** {pii_phi_payment}
- **Retention Policy:** {policy}
- **Compliance Requirements:** {gdpr_soc2_hipaa}

## Operational Considerations

- **Monitoring & Alerting:** {dashboards_alerts}
- **Error Handling / Retries:** {strategy}
- **Rate Limits / Quotas:** {limits}
- **Maintenance Windows:** {schedule}

## Testing & Certification

- [ ] Sandbox access confirmed
- [ ] Contract tests implemented
- [ ] Load / failover tests completed
- [ ] Smoke tests automated for release pipeline

## Change Management

- **Versioning Strategy:** {semver_date_based}
- **Deprecation Policy:** {notice_period}
- **Notification Channel:** {email_slack_portal}

## Risk & Mitigation

- **Risk:** {description}
  - **Mitigation:** {plan}
- **Risk:** {description}
  - **Mitigation:** {plan}
- Recurring Joint Review Scheduled: [ ] Quarterly [ ] Semi-annual [ ] Annual — next on {date}

## Sign-off

- Internal Approver: {name_date}
- External Approver: {name_date}

## Appendices

- Spec / Swagger: {link}
- Runbooks: {link}
- SLA Document: {link}
