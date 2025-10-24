# Template Arsenal Report — October 23, 2025

HOO RAH. I poked every template in this repo to see where the power rules and where the exhaust fumes live.

## Duplicate Audit
- Calculated SHA-256 fingerprints for all templates; no byte-for-byte duplicates surfaced.
- The RFC decision twins (`docs/architecture/rfc-accept.md` and `docs/architecture/rfc-reject.md`) intentionally mirror structure, so I left them intact.

## Tier Ranking
### S Tier (9/10)
- `.github/ISSUE_TEMPLATE/bug-report.md` — exhaustive but still readable; your on-call rotation will send thank-you cookies.
- `.github/ISSUE_TEMPLATE/incident-postmortem.md` — does justice to the “blameless-but-thorough” credo.
- `.github/PULL_REQUEST_TEMPLATE/bug-fix.md` — keeps reviewers locked on root cause, not storytelling detours.
- `docs/knowledge/knowledge-transfer-playbook.md` — the smoothest ownership baton pass I’ve seen in Markdown.
- `docs/operations/ops-runbook-update.md` — operational hygiene on rails with roll-forward and roll-back covered.
- `docs/operations/integration-contract.md` — partner expectations nailed before lawyers even log in.
- `docs/planning/feature-spec.md` — ships a product spec that balances product, UX, and engineering depth.
- `docs/strategy/stakeholder-comms-brief.md` — keeps every audience aligned without CC’ing the entire internet.

### A Tier (8/10)
- `README.md`
- `.github/ISSUE_TEMPLATE/feature-proposal.md`
- `.github/ISSUE_TEMPLATE/rfc-submission.md`
- `.github/ISSUE_TEMPLATE/technical-decision.md`
- `.github/ISSUE_TEMPLATE/version-release.md`
- `.github/PULL_REQUEST_TEMPLATE/milestone-task.md`
- `.github/DISCUSSION_TEMPLATE/critique-thread.md`
- `.github/DISCUSSION_TEMPLATE/rfc.md`
- `docs/architecture/design-review-packet.md`
- `docs/architecture/architecture-fitness-review.md`
- `docs/knowledge/spike-research-log.md`
- `docs/knowledge/retrospective-turbo-pack.md`
- `docs/operations/incident-readiness-drill.md`
- `docs/planning/discovery-brief.md`
- `docs/planning/milestone.md`
- `docs/planning/roadmap.md`

### B Tier (7/10)
- `.github/DISCUSSION_TEMPLATE/community-welcome.md`
- `.github/DISCUSSION_TEMPLATE/mini-rfc-fast-track.md`
- `.github/ISSUE_TEMPLATE/help-wanted.md`
- `docs/architecture/rfc-accept.md`
- `docs/architecture/rfc-reject.md`
- `docs/community/community-call-notes.md`
- `docs/knowledge/engineering-onboarding-quest.md`
- `docs/planning/analytics-deep-dive.md`

### C Tier (6/10)
- `.github/ISSUE_TEMPLATE/gh-issue-task.md` — powerful, but heavy enough to trigger a second backlog grooming meeting just to fill it in.

## File-by-File Roast

### README.md
**Roast it:** This lore drop reads like you swapped CONTRIBUTING.md with a D&D campaign primer.
**Suggestions?:**
- Add a two-bullet “start here” adoption guide before the mythos kicks in so new maintainers don’t bounce.
**Real score:** 8/10 (A Tier)

### .github/ISSUE_TEMPLATE/bug-report.md
**Roast it:** NASA control rooms have slimmer checklists than this bug report.
**Suggestions?:**
- Offer an HTML comment pointing to a “lite” variant for trivial bugs so folks aren’t scared off small fixes.
**Real score:** 9/10 (S Tier)

### .github/ISSUE_TEMPLATE/feature-proposal.md
**Roast it:** Reads like you expect every feature pitch to ship with a seed-round deck.
**Suggestions?:**
- Include an explicit slot for validation artifacts (survey link, experiment ID) to encourage evidence-based pitches.
**Real score:** 8/10 (A Tier)

### .github/ISSUE_TEMPLATE/gh-issue-task.md
**Roast it:** This template is a marathon with sub-quests, side quests, and New Game+.
**Suggestions?:**
- Split the implementation/test planning into collapsible HTML sections or a separate doc so routine tasks don’t drown in boilerplate.
**Real score:** 6/10 (C Tier)

### .github/ISSUE_TEMPLATE/help-wanted.md
**Roast it:** Reads like a LinkedIn recruiter slid into your repository.
**Suggestions?:**
- Add a short “how we’ll support you” blurb to set expectations for mentoring and response times.
**Real score:** 7/10 (B Tier)

### .github/ISSUE_TEMPLATE/incident-postmortem.md
**Roast it:** You could run a federal inquiry with this much structure.
**Suggestions?:**
- Provide a reminder to attach timelines or dashboards as images for folks who archive issues offline.
**Real score:** 9/10 (S Tier)

### .github/ISSUE_TEMPLATE/rfc-submission.md
**Roast it:** Asks sharper questions than half the product briefings I’ve sat through.
**Suggestions?:**
- Add an optional “stakeholder buy-in risks” line to surface political blockers early.
**Real score:** 8/10 (A Tier)

### .github/ISSUE_TEMPLATE/technical-decision.md
**Roast it:** Turns every architecture choice into a courtroom transcript.
**Suggestions?:**
- Suggest a default revisit cadence (e.g., 6 months) so decisions actually age gracefully.
**Real score:** 8/10 (A Tier)

### .github/ISSUE_TEMPLATE/version-release.md
**Roast it:** Pre-flight checklists envy how detailed this rollout plan is.
**Suggestions?:**
- Add a quick “rollback owner + command” prompt to shorten the scramble when nerves spike.
**Real score:** 8/10 (A Tier)

### .github/PULL_REQUEST_TEMPLATE/bug-fix.md
**Roast it:** Turns a humble bug fix into a root-cause postdoc defense.
**Suggestions?:**
- Link to a sample verification command so contributors know what “tests pass locally” actually means for this repo.
**Real score:** 9/10 (S Tier)

### .github/PULL_REQUEST_TEMPLATE/milestone-task.md
**Roast it:** Project managers everywhere are blushing at this dependency manifest.
**Suggestions?:**
- Add an explicit “milestone health” checkbox (on-track / at-risk) to signal status at a glance.
**Real score:** 8/10 (A Tier)

### .github/DISCUSSION_TEMPLATE/community-welcome.md
**Roast it:** The icebreaker section alone could host a virtual summer camp.
**Suggestions?:**
- Offer two sample prompts (new contributors vs. seasoned maintainers) to keep replies focused.
**Real score:** 7/10 (B Tier)

### .github/DISCUSSION_TEMPLATE/critique-thread.md
**Roast it:** You can practically smell the fresh design critique espresso while reading this.
**Suggestions?:**
- Encourage attaching artifacts inline (screenshots, figma embeds) to reduce context hunting.
**Real score:** 8/10 (A Tier)

### .github/DISCUSSION_TEMPLATE/mini-rfc-fast-track.md
**Roast it:** “Mini” apparently means “everything except the appendices.”
**Suggestions?:**
- Highlight which sections are optional for changes under a day so the template doesn’t scare off quick wins.
**Real score:** 7/10 (B Tier)

### .github/DISCUSSION_TEMPLATE/rfc.md
**Roast it:** Feels like a full steering-committee brief—which is the point.
**Suggestions?:**
- Pre-fill the status line with GitHub labels (e.g., `status: draft`) to keep tooling in sync.
**Real score:** 8/10 (A Tier)

### docs/architecture/design-review-packet.md
**Roast it:** The design review equivalent of filing your taxes with itemized deductions.
**Suggestions?:**
- Add a “link to Loom walkthrough” slot; async reviewers will love you for it.
**Real score:** 8/10 (A Tier)

### docs/architecture/architecture-fitness-review.md
**Roast it:** This scorecard will guilt any platform lead into scheduling their next refactor.
**Suggestions?:**
- Provide scoring guidance (what does a 3 vs. 5 mean) to keep reviews consistent quarter to quarter.
**Real score:** 8/10 (A Tier)

### docs/architecture/rfc-accept.md
**Roast it:** Reads like a victory lap memo that forgot the confetti.
**Suggestions?:**
- Add a field for “tracking issue epic” so implementation work is discoverable without searching.
**Real score:** 7/10 (B Tier)

### docs/architecture/rfc-reject.md
**Roast it:** The friendliest rejection letter you’ll ever receive, but still a rejection.
**Suggestions?:**
- Include a “conditions for reconsideration” note to guide future revisions.
**Real score:** 7/10 (B Tier)

### docs/community/community-call-notes.md
**Roast it:** Makes your cozy community chat feel like a board meeting, in a good way.
**Suggestions?:**
- Add a reminder to capture decisions or unresolved topics as follow-up issues for traceability.
**Real score:** 7/10 (B Tier)

### docs/knowledge/knowledge-transfer-playbook.md
**Roast it:** This handoff is choreographed like a spy movie briefcase exchange.
**Suggestions?:**
- Prompt for “known landmines” (things to avoid touching) so the newcomer dodges hidden dragons.
**Real score:** 9/10 (S Tier)

### docs/knowledge/spike-research-log.md
**Roast it:** Treats every spike like a peer-reviewed study.
**Suggestions?:**
- Add a lightweight effort log (hours spent) to help with future capacity planning.
**Real score:** 8/10 (A Tier)

### docs/knowledge/engineering-onboarding-quest.md
**Roast it:** New hires might think they joined a tabletop RPG guild.
**Suggestions?:**
- Offer a remote-friendly variant (async buddy check-ins, regional office hours) to match distributed teams.
**Real score:** 7/10 (B Tier)

### docs/knowledge/retrospective-turbo-pack.md
**Roast it:** Retro lightning round meets productivity cult starter kit.
**Suggestions?:**
- Suggest limiting each section to top three bullets so action items stay prioritized.
**Real score:** 8/10 (A Tier)

### docs/operations/incident-readiness-drill.md
**Roast it:** Disaster cosplay has never felt so methodical.
**Suggestions?:**
- Add severity presets (SEV0/1/2) with example objectives to help teams right-size the drill.
**Real score:** 8/10 (A Tier)

### docs/operations/ops-runbook-update.md
**Roast it:** Makes updating a runbook feel like submitting regulatory paperwork—in a helpful way.
**Suggestions?:**
- Encourage attaching diff snapshots or PR links so reviewers see exactly what changed.
**Real score:** 9/10 (S Tier)

### docs/operations/integration-contract.md
**Roast it:** Whoever fills this out probably also has an SLA tattoo.
**Suggestions?:**
- Provide a checkbox for recurring joint reviews so the contract doesn’t fossilize.
**Real score:** 9/10 (S Tier)

### docs/planning/analytics-deep-dive.md
**Roast it:** Turns analysts into noir detectives hunting dashboards in dark alleys.
**Suggestions?:**
- Include a template SQL / notebook link example to help junior analysts kick off faster.
**Real score:** 7/10 (B Tier)

### docs/planning/discovery-brief.md
**Roast it:** Discovery gets the CSI treatment—evidence everywhere.
**Suggestions?:**
- Add a “decision owner” field so people know who will green-light moving past discovery.
**Real score:** 8/10 (A Tier)

### docs/planning/feature-spec.md
**Roast it:** Reads like a NASA launch checklist for user stories.
**Suggestions?:**
- Call out where to stash API schemas versus links so teams stay consistent across specs.
**Real score:** 9/10 (S Tier)

### docs/planning/milestone.md
**Roast it:** Every milestone secretly wishes it had this much ceremony.
**Suggestions?:**
- Add an “early warning signals” bullet to catch drift before the checkpoint slips.
**Real score:** 8/10 (A Tier)

### docs/planning/roadmap.md
**Roast it:** Packs a three-horizon strategy into a single Markdown scroll.
**Suggestions?:**
- Offer guidance on how often to refresh each horizon so “Later” doesn’t become “Never.”
**Real score:** 8/10 (A Tier)

### docs/strategy/stakeholder-comms-brief.md
**Roast it:** Your comms plan now has a comms plan.
**Suggestions?:**
- Link to a sample announcement or slide deck to speed up reuse.
**Real score:** 9/10 (S Tier)

## Prompts
---

In `docs/architecture/rfc-reject.md`, around line 37, capture conditions for reconsideration so future revisions know the bar.
---

In `docs/community/community-call-notes.md`, around line 48, add a reminder to open follow-up issues for unresolved topics.
---

In `docs/knowledge/knowledge-transfer-playbook.md`, around line 24, add a “Known Landmines” bullet describing areas to avoid or approach carefully.
---

In `docs/knowledge/spike-research-log.md`, around line 32, add an “Effort Logged” field to capture hours/days invested.
---

In `docs/knowledge/engineering-onboarding-quest.md`, around line 32, include guidance for remote or distributed onboarding variants.
---

In `docs/knowledge/retrospective-turbo-pack.md`, around line 29, add a note limiting each section to the top three items to keep focus.
---

In `docs/operations/incident-readiness-drill.md`, around line 17, add suggested severity presets (SEV0/1/2) with example drill objectives.
---

In `docs/operations/ops-runbook-update.md`, around line 25, prompt authors to link the diff or PR showing the exact runbook changes.
---

In `docs/operations/integration-contract.md`, around line 61, add a checkbox scheduling recurring joint reviews of the contract.
---

In `docs/planning/analytics-deep-dive.md`, around line 66, provide a placeholder linking to a template SQL query or notebook.
---

In `docs/planning/discovery-brief.md`, around line 62, add a “Decision Owner” line identifying who moves the brief into solutioning.
---

In `docs/planning/feature-spec.md`, around line 57, clarify where to store API schemas (inline vs. linked docs) for consistency.
---

In `docs/planning/milestone.md`, around line 47, add an “Early Warning Signals” list to highlight leading indicators of risk.
---

In `docs/planning/roadmap.md`, around line 60, include guidance on how often to refresh each horizon (e.g., Now monthly, Next quarterly).
---

In `docs/strategy/stakeholder-comms-brief.md`, around line 57, add a slot linking to a sample announcement, deck, or script.
---
