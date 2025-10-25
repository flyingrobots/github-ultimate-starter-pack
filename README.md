---
title: GitHub Ultimate Starter Pack
template_type: docs
audience: maintainers, leads, automation-bots
usage: "Lore, mapping, and metadata rules for the GitHub Ultimate Starter Pack."
synced_issue_template: ""
status: canonical
---

# ⚙️ GitHub Ultimate Starter Pack (GUSP)

## Saint GUSP, Patron of Pipelines — v0.0.1-alpha

## TL;DR

**Install the CLI (one-time):**

```bash
./scripts/install.sh
# add ~/.gusp/bin to your PATH if prompted
```

**Bootstrap a repo:**

```bash
cd /path/to/project
gusp init
```

**Refresh OSS boilerplate later:**

```bash
gusp scaffold
```

**Smoke-test in Docker:**

```bash
docker build -f Dockerfile.ci -t gusp-ci .
docker run --rm gusp-ci
```

Run once.
Ban chaos forever.

---

## The Gospel According to GUSP

> *“In pipelines we trust. In YAML we find peace.”*

---

## Prologue — The Age of Build Chaos

Before the sacred merge, there was only darkness.  
Sprints without scope. Retros without mercy.  
A thousand half-written `README`s screaming for linting.  

Engineers wandered the backlog like prophets without Wi-Fi.  
Jenkins, the Olde One, coughed his final stack trace and whispered:

> *“Maybe try clearing the workspace.”*

The servers wept binary tears.

---

## The First Invocation

One night—03:17 a.m. server time,  
a weary engineer stumbled through humming racks,  
armed with cold brew and hubris.  

They tripped over an HDMI cable, hit `Enter` on an unsaved branch, and accidentally typed:

```bash
gusp init
```

Lightning struck the data center.  
Lint errors harmonized in F major.  
A glowing prompt appeared and spoke in lowercase divinity:

> *“repository detected. bootstrap commencing.”*

And somewhere, deep in the syslog, a voice chanted:

> *autodeployus sanctus est*

---

## The Birth of Saint GUSP

**Thus was born GUSP** — the ***GitHub Ultimate Starter Pack***.
Half automation daemon, half open-source saint.
Cloaked in YAML, crowned in CI lights.

It scaffolded `LICENSE` files, sanctified `CODEOWNERS`, and aligned metadata with celestial precision. Its first act of mercy: closing all “quick question” issues that were actually 40-page design docs.

---

## 🎸 The Ascension of the 10× Rockstar

When the engineer pressed `Enter`, every pipeline turned green. All tests passed. Coverage rose three points.  

And in that moment — Jenkins grew ten years younger.  
A tuft of hair sprouted back.
He blinked slowly and whispered,

> *“I… I feel relevant again!”*

The CI lights formed a perfect circle, later canonized as *The Halo of Continuous Integration*.

Slack erupted in emoji rapture.
HR manifested a new pay band called Rockstar ++.
The CEO’s yacht auto-deployed to staging.

And the engineer, sanctified by automation,
ascended into the changelog... leaving only
a warm `.github/` folder and the smell of burnt coffee and divinity.

---

## The Gospel of Templates

Inside that folder were relics: issue forms, PR rituals, discussion gospels.  
The disciples copied them repo to repo, and chaos became order.  
Stand-ups shortened. Docs synced. Even Jira grew merciful.  

---

## The Eternal Commandments

1. Thou shalt not merge unto main unlinted.
2. Thou shalt keep thy `README` holy and versioned.
3. Thou shalt document before deployment, lest prod smite thee.
4. Branches shall rebase cleanly or be cast into Merge Hell.
5. Honor thy `CODEOWNERS` and reviewers that thy CI may be long and green.

---

## Relics of the Faithful

- Metadata Contract — YAML front-matter that keeps your lore in sync
- Scaffold of Enlightenment —

```bash
gusp scaffold
```

conjures templates from nothingness

### Docker Trial

```bash
docker run --rm gusp-ci
```

tests the faith without polluting your host

Each command rekindles a spark of that first divine commit.

---

## Epilogue — The Legend Continues

It is said that when a repo achieves perfect lint, docs match implementation, and CI runs green on the first try, you can still hear soft typing in the logs.

Some say it’s the engineer. Others say it’s GUSP itself.  

Either way, the message remains:

> *Automate thy chaos. Document thy legend.*

---

## License

MIT • © J. Kirby Ross • [flyingrobots](https://github.com/flyingrobots)
