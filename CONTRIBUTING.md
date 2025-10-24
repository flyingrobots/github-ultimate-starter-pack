# Contributing to GitHub Ultimate Starter Pack

Thanks for helping keep this template arsenal legendary. This repo is a source-of-truth set of Markdown templates that teams can drop straight into their projects. A few guardrails keep everything consistent and automation-friendly.

## Quick Start

1. **Install dependencies**  
   There are currently no runtime dependencies, but we use `markdownlint-cli` for validation. Install it globally or run via `npx`:
   ```bash
   npx markdownlint-cli '**/*.md'
   ```
2. **Make changes**  
   - Prefer editing files in `docs/` or `.github/` directly; these are what downstream repos consume.  
   - Keep metadata front matter intact so tooling can classify templates.  
   - When introducing new templates, add them to `docs/index.md` (see below) and update `REPORT.md` if you want them tier-ranked.
3. **Run checks**  
   ```bash
   npx markdownlint-cli '**/*.md'
   node scripts/validate-frontmatter.mjs    # optional sanity check, see scripts folder
   ```
4. **Open a PR**  
   - Summarise why the template change is useful.  
   - Screenshots or GIFs of rendered issue forms are encouraged.  
   - Reference any “Prompts” you completed from `REPORT.md`.

## Editing Guidelines

- **Voice & Tone**: Keep the copy energetic but instructive. The repo leans playful (“GitHub Ultimate Starter Pack”) but never at the expense of clarity.
- **Placeholders**: Use `{snake_case_placeholders}` consistently. If a field is optional, note it inline.
- **Lite vs. Full Templates**: When pointing to alternate “lite” templates, ensure both flavours exist and are discoverable in the index.
- **Tables**: Align column counts and preserve header rows—automation scripts depend on them.
- **Front Matter**: Every template must begin with YAML front matter as documented in `README.md`. Add new `template_type` values only after discussing in an issue.

## Repository Map

- `.github/` – Issue, PR, and discussion templates. These are production-ready for GitHub repos.
- `docs/` – Narrative templates for docs/Confluence/Notion. Organised by domain (planning, operations, etc.).
- `scripts/` – Helper utilities (linting, front matter validation, export helpers).
- `REPORT.md` – Tier ranking, roast notes, and outstanding prompts for future contributors.

## Releasing Updates

This repo is a template, so “releases” usually mean tagging a version and updating downstream projects.

1. Run the validation scripts.
2. Update the changelog in `docs/index.md` (there’s a Release Notes section).
3. Tag the commit (`git tag vYYYY.MM.DD`) and push.
4. If you maintain downstream automations, run `npm run sync` (documented in `scripts/README.md` once it lands) to open PRs against adopters.

## Need Help?

- Open a GitHub Discussion using the “Critique” template for feedback on drafts.
- File an issue with the “Feature proposal” or “Bug report (lite)” template depending on scope.
- Ping `#github-ultimate-starter-pack` in Slack (internal) for live pairing.

Thanks again for raising the bar. Stay hydrated, wield responsibly, and may your templates always auto-populate the right metadata.
