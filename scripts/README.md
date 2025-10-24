
## install.sh

Copies the repo into `~/.gusp` and symlinks the CLI into `~/.gusp/bin`. Run it once, add the bin folder to your `PATH`, and you can call `gusp init` from anywhere.

```bash
scripts/install.sh
```
# Scripts

Utility scripts keep the GitHub Ultimate Starter Pack healthy.

## validate-frontmatter.mjs

Ensures every Markdown template contains the required YAML keys so GitHub and documentation tooling can ingest them.

```bash
node scripts/validate-frontmatter.mjs
```

- Checks all files under `docs/` for the canonical front matter fields (`title`, `template_type`, `audience`, `usage`, `status`).
- Checks all files under `.github/` for `name`/`title` and `description`/`about` values used by GitHub pickers.
- Exits non-zero with a helpful message if anything is missing.

Add this to your CI or run it locally before tagging a release.

## generate-index.mjs

Regenerates the template catalog table in `docs/index.md` using front-matter metadata. The file contains a marker (`<!-- auto:template-table -->`) that the script replaces with a freshly generated table.

```bash
node scripts/generate-index.mjs
```

Run this whenever new templates land or metadata changes.

## gusp-scaffold.sh

Interactive CLI (with optional [gum](https://github.com/charmbracelet/gum) / [huh](https://github.com/charmbracelet/huh) support) that bootstraps standard OSS repository files such as `LICENSE`, `NOTICE`, `CODEOWNERS`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md`.

```bash
scripts/gusp-scaffold.sh
```

The script pre-fills answers by inspecting the current Git remote and prompts before overwriting existing files.

## Coming Soon

- `sync-templates.mjs`: mirror templates into downstream repos via the GitHub API (stub in repo today).
- `preview.mjs`: render templates as HTML/GIF for quick browsing in the index.

Feel free to drop proposals or PRs if you want to help build these out.

## gusp-init.sh

One-command bootstrap for brand-new repositories. Run it from an empty project directory (or an existing git repo) to:

- initialise git if needed
- optionally create the GitHub remote via the authenticated `gh` CLI
- copy GitHub Ultimate Starter Pack templates (`.github/`, `docs/`)
- invoke the OSS scaffold to generate LICENSE/CODEOWNERS/etc.

```bash
/path/to/github-ultimate-starter-pack/scripts/gusp.sh init
```

Add the script to your `PATH` or create an alias for a `gusp init` feel.
