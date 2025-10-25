---
title: Starter Pack Catalog
template_type: index
audience: maintainers, contributors
usage: "Browse, preview, and export templates from the GitHub Ultimate Starter Pack."
synced_issue_template: ""
status: canonical
---

# Template Catalog

Welcome to the command center. Use this index to preview every template, decide which variant fits your scenario, and grab links for fast exporting.

## Quick Start

1. **Pick your surface** – GitHub workflows live under `.github/`; long-form docs sit in `docs/{domain}`.
2. **Choose the fidelity** – Many areas ship both full and lite variants. The index flags them explicitly.
3. **Copy or sync** – Grab the markdown directly or run the sync scripts (see [`scripts/README.md`](../scripts/README.md) once you’ve installed the tooling).

## Template Matrix

<!-- auto:template-table -->
| Domain | Template | Description | Variant | Path |
| --- | --- | --- | --- | --- |
| Architecture | Architecture Fitness Review | Assess system health across performance, resilience, and maintainability. | Full | `docs/architecture/architecture-fitness-review.md` |
| Architecture | Design Review Packet | Bundle materials for productive async or live design critiques. | Full | `docs/architecture/design-review-packet.md` |
| Architecture | RFC Accept Decision | Record acceptance details, conditions, and follow-up for approved RFCs. | Full | `docs/architecture/rfc-accept.md` |
| Architecture | RFC Reject Decision | Document context and reasons when declining an RFC. | Full | `docs/architecture/rfc-reject.md` |
| Community | Community Call Notes | Capture agenda, discussion highlights, and follow-up from community calls. | Full | `docs/community/community-call-notes.md` |
| Knowledge | Engineering Onboarding Quest | Guide new engineers through an experiential onboarding adventure. | Full | `docs/knowledge/engineering-onboarding-quest.md` |
| Knowledge | Knowledge Transfer Playbook | Ensure smooth ownership transitions with context, contacts, and open tasks. | Full | `docs/knowledge/knowledge-transfer-playbook.md` |
| Knowledge | Retrospective Turbo Pack | Run rapid, async-friendly retrospectives with actionable follow-through. | Full | `docs/knowledge/retrospective-turbo-pack.md` |
| Knowledge | Spike / Research Log | Document hypotheses, experiments, and findings from research spikes. | Full | `docs/knowledge/spike-research-log.md` |
| Operations | Incident Readiness Drill | Plan and execute incident rehearsal drills to verify preparedness. | Full | `docs/operations/incident-readiness-drill.md` |
| Operations | Integration Contract | Define expectations and responsibilities for third-party or inter-team integrations. | Full | `docs/operations/integration-contract.md` |
| Operations | Ops Runbook Update | Track updates to operational procedures, triggers, and validation. | Full | `docs/operations/ops-runbook-update.md` |
| Planning | Analytics Deep Dive | Structure data investigations to surface insights and recommendations. | Full | `docs/planning/analytics-deep-dive.md` |
| Planning | Discovery Brief | Capture early discovery learnings and align teams before solutioning. | Full | `docs/planning/discovery-brief.md` |
| Planning | Feature Spec | Translate a product idea into an implementation-ready specification. | Full | `docs/planning/feature-spec.md` |
| Planning | Milestone | Define milestone objectives, workstreams, and tracking checkpoints. | Full | `docs/planning/milestone.md` |
| Planning | Roadmap | Lay out strategic plan across time horizons with initiatives and dependencies. | Full | `docs/planning/roadmap.md` |
| Strategy | Stakeholder Comms Brief | Prepare concise updates for stakeholders with key messages, audiences, and risks. | Full | `docs/strategy/stakeholder-comms-brief.md` |
| Issues | Bug report | Capture broken experiences, impact, and reproduction details. | Full | `.github/ISSUE_TEMPLATE/bug-report.md` |
| Issues | Bug report (lite) | Capture quick UI or copy glitches without the full incident checklist. | Lite | `.github/ISSUE_TEMPLATE/bug-report-lite.md` |
| Issues | Delivery task | Provide everything an assignee needs to execute a scoped task. | Full | `.github/ISSUE_TEMPLATE/gh-issue-task.md` |
| Issues | Feature proposal | Pitch new feature ideas with value, scope, and follow-up actions. | Full | `.github/ISSUE_TEMPLATE/feature-proposal.md` |
| Issues | Help wanted | Recruit contributors for scoped, high-impact work. | Full | `.github/ISSUE_TEMPLATE/help-wanted.md` |
| Issues | Incident postmortem | Document incidents with impact, timeline, root cause, and corrective actions. | Full | `.github/ISSUE_TEMPLATE/incident-postmortem.md` |
| Issues | Quick task | Scope small, low-risk work without the heavyweight planning form. | Lite | `.github/ISSUE_TEMPLATE/quick-task.md` |
| Issues | RFC submission | File new RFCs with context, impact, and reviewer questions. | Full | `.github/ISSUE_TEMPLATE/rfc-submission.md` |
| Issues | Technical decision record | Document context, options, and rationale for technical choices. | Full | `.github/ISSUE_TEMPLATE/technical-decision.md` |
| Issues | Version release plan | Plan and track releases with ownership, readiness, and rollout details. | Full | `.github/ISSUE_TEMPLATE/version-release.md` |
| Pull Requests | Bug fix PR | Structure bug fix PRs with root cause, fix summary, and validation. | Full | `.github/PULL_REQUEST_TEMPLATE/bug-fix.md` |
| Pull Requests | Milestone task PR | Advance milestone work with dependency tracking and verification plan. | Full | `.github/PULL_REQUEST_TEMPLATE/milestone-task.md` |
| Discussions | Community Welcome | Kick off inclusive discussion threads for newcomers. | Full | `.github/DISCUSSION_TEMPLATE/community-welcome.md` |
| Discussions | Critique Thread | Gather structured feedback on work in progress. | Full | `.github/DISCUSSION_TEMPLATE/critique-thread.md` |
| Discussions | Mini RFC (Fast Track) | Fast-track small RFCs without heavy ceremony. | Lite | `.github/DISCUSSION_TEMPLATE/mini-rfc-fast-track.md` |
| Discussions | RFC Discussion | Run full RFC discussions with decisions documented. | Full | `.github/DISCUSSION_TEMPLATE/rfc.md` |


> 💡 **Tip:** Copy the path column value and run `pbcopy < path` (macOS) or open the file directly in GitHub to see rendered previews.
> 📸 **Previews:** Store GIFs/MP4s in `docs/previews/` and link them from the table (see [preview README](docs/previews/README.md)).


## When to Use Lite vs. Full

| Scenario | Use Lite | Use Full |
| --- | --- | --- |
| Cosmetic UI bug or spelling fix | ✅ `bug-report-lite.md` | ❌ |
| Quick engineering chore (< 2h) | ✅ `quick-task.md` | ❌ |
| Multi-team feature delivery | ❌ | ✅ `gh-issue-task.md` |
| Architectural record | ❌ | ✅ `technical-decision.md` |
| RFC for small refactor | ✅ `mini-rfc-fast-track.md` (lite) | ❌ `rfc.md` unless scope grows |

## Changelog

| Date | Change | Owner |
| --- | --- | --- |
| 2025-10-23 | Initial index published; lite templates added | @ultimate-codex |

## Export Recipes

- **Single template:**
  ```bash
  gh api repos/OWNER/REPO/contents/.github/ISSUE_TEMPLATE/bug-report.md \
    --method GET --header "Accept: application/vnd.github.raw" > bug-report.md
  ```
- **Bulk sync (coming soon):** run `npm run sync` after installing the tooling in `scripts/` (see roadmap below).

## Roadmap

- [ ] Add screenshot previews for every template
- [ ] Publish `sync-templates` CLI for downstream repos
- [ ] Automate catalog generation from file metadata

Stay tuned as we continue to bend time, space, and triage bandwidth in your favour.
