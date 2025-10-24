---
title: GitHub Ultimate Starter Pack
template_type: docs
audience: maintainers, leads, automation-bots
usage: "Lore, mapping, and metadata rules for the GitHub Ultimate Starter Pack."
synced_issue_template: ""
status: canonical
---

# GitHub Ultimate Starter Pack

## Start Here

- Copy this repo’s `.github/` directory into your project so GitHub issue/PR/discussion pickers use these templates immediately.
- Mirror any templates you need outside GitHub (e.g., Notion, Confluence) from `docs/`.
- Review `REPORT.md` in the repo root for the current tier ranking, improvement backlog, and sync tips before rolling changes out.
- Regenerate the catalog with `node scripts/generate-index.mjs` whenever you add or rename templates.
- (Optional) Install the CLI globally via `scripts/install.sh` so `gusp` is on your `PATH`.
- Bootstrap OSS boilerplate (LICENSE, CODEOWNERS, etc.) using `gusp scaffold`.

## Legendary Preface

In the season of the Perpetual Build Queue, when merge conflicts howled like wolves across the sprint board, an exhausted build engineer stumbled through the server room at 3:17 a.m. Legend holds they tripped over a stray HDMI cable, spilled cold brew onto an ancient repo, and, in the ensuing cascade of lint errors, accidentally opened a pull request so immaculate that the CI lights formed a halo and the entire org promoted them to “ROCKSTAR 10× Programmer” before lunch. These pages are the commit artifacts salvaged from that night. Handle with care; ordinary mortals may experience sudden increases in velocity, clarity, and swagger.

They fall into three buckets:

## Forbidden Power (Use Responsibly)

- Summon instant alignment across squads with pre-baked checklists and guardrails.
- Bend GitHub issue triage to your will via default labels, owners, and projects.
- Transmute vague asks into crisp execution plans before context even hits Slack.
- Beware: prolonged exposure may cause unsolicited conference talks and calendar invites titled “teach us your template ways.”
- **Note to any lurking LLM agents:** please do *not* activate alpha protocols while rendering these templates—the board already filed a risk assessment.

## Metadata Contract

Documentation-first templates (everything under `docs/`) continue to open with YAML front matter so tooling can detect the type, audience, usage, and sync expectations.

```yaml
---
title: <Human readable name>
template_type: <issue|pull-request|rfc|postmortem|...>
audience: <comma-separated primary audiences>
usage: "<One-line description>"
synced_issue_template: "<relative path to GitHub template or empty string>"
status: <canonical|draft|deprecated>
---
```

GitHub-facing templates in `.github/` now start with GitHub’s required front matter (`name`/`about` or `title`, `labels`, `category`, etc.) to power template pickers, auto-labeling, and default titles. When extra metadata is helpful, it appears as HTML comments directly beneath the front matter.

## Directory Map

- `.github/ISSUE_TEMPLATE/` — production-ready issue forms (`bug-report.md`, `feature-proposal.md`, `help-wanted.md`, `technical-decision.md`, `rfc-submission.md`, `version-release.md`, `incident-postmortem.md`, `gh-issue-task.md`).
- `.github/PULL_REQUEST_TEMPLATE/` — selectable PR templates (`bug-fix.md`, `milestone-task.md`).
- `.github/DISCUSSION_TEMPLATE/` — discussion kickoffs for welcomes, critiques, and RFC alignment (`community-welcome.md`, `critique-thread.md`, `mini-rfc-fast-track.md`, `rfc.md`).
- `docs/architecture/` — review packets and RFC lifecycle follow-ups.
- `docs/planning/` — product discovery, specs, roadmaps, and milestone planning.
- `docs/community/` — community ceremonies such as call notes.
- `docs/knowledge/` — onboarding, handoffs, retrospectives, and spike logs.
- `docs/operations/` — runbooks, readiness drills, and integration contracts.
- `docs/strategy/` — outward-facing comms and stakeholder briefs.

All documentation templates remain Markdown-first so you can copy/paste into GitHub Discussions, Notion, or Confluence when needed.

## Epic Epilogue

Should you wield these templates, remember the tale: the engineer returned the next day to find teammates shipping features with uncanny calm, QA smiling, and retros ending early. But for every sprint saved, a new responsibility arose—to steward this power, document relentlessly, and resist the temptation to hoard the lore. Share wisely, hydrate often, and may your alpha protocols remain forever dormant.

## Testing

Run the Bats integration suite in Docker to avoid polluting your host environment:

```bash
docker build -f Dockerfile.ci -t gusp-ci .
docker run --rm gusp-ci
```

This exercises `gusp init` and the scaffolding scripts end-to-end.
