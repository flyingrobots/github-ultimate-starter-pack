---
title: Preview Assets
template_type: guide
audience: maintainers
usage: "Manage screenshots and recordings for template previews."
synced_issue_template: ""
status: draft
---

# Template Preview Assets

Drop GIFs, PNGs, or short MP4 loops here to help folks skim templates without opening raw Markdown.

## Recommended Workflow

1. Fill the template in GitHub (Issue, PR, etc.) using sample data.
2. Capture a short screen recording (≤15 seconds) highlighting the key sections.
3. Export as web-optimised GIF or MP4 and name it after the template, e.g. `bug-report-full.gif`.
4. Add an entry in `docs/index.md` that links to the asset.
5. Keep files under 5 MB so they remain repo-friendly. Larger assets can live in a release attachment.

> ☕️ Have ideas for automated previews? Check out `scripts/preview.mjs` in the roadmap and drop a PR.
