---
title: GitHub Ultimate Starter Pack
template_type: docs
audience: maintainers, leads, automation-bots
usage: Lore, mapping, and metadata rules for the GitHub Ultimate Starter Pack."
status: canonical
---

# G.U.S.P: GITHUB ULTIMATE STARTER PACK 

> AUTODEPLOYUS SANCTUS EST

<img alt="G.U.S.P" src="https://github.com/user-attachments/assets/695f564a-85d9-4fa2-8855-85c23d371f13" height="600" align="right" />

Shred thy repo. G.U.S.P. summons the boilerplate while you contemplate your repo's fate.

### ⚡️ TL;DR (TOTAL LEGEND; DEPLOY & REAP)

Should you wish to call upon the almighty powers of G.U.S.P.:

#### I. Mark thy repo

Copy `.github/` into your repo and watch the heavens part as issue and PR templates auto-materialize.

#### II. Mirror mine sacred docs

Copy (`/docs/`) into your external wiki of choice: Notion, Confluence, or whatever digital chapel your PMs pray in.

#### III. Consult thy sacred text

Read [`REPORT.md`](./REPORT.md) before meddling with The Templates. The Tier Rankings do not forgive hubris.

#### IV. Regenerate thy index

```bash
node scripts/generate-index.mjs
```
Every time you rename a file, an angel loses a merge conflict.

#### V. Optional (but Metal) Run

```bash
scripts/install.sh
```

to install `gusp` globally and wield it from your `PATH` like the Sword of CI.

#### VI. Scaffold thy legacy

```bash
gusp scaffold
```

to summon `LICENSE`s, `CODEOWNERS`, and boilerplate so pure it passes lint _without sin_.

## 🕯️ L’ORIGIN: THE NIGHT OF HOLY DEPLOY

_It was 3:17 A.M._  
_The air was thick with fog and in the distance... the howl of unmerged branches was heard._  
_A lone build engineer, delirious from cold brew and despair, stumbled through the server racks until fate tripped the dev on a coiled HDMI cable._  
_The cup spilled. The repo merged._  
_And from the sparks of a thousand lint errors: G.U.S.P was summoned._  

_The commit was immaculate. The pipelines passed. The logs glowed blue._  
_By sunrise, the org had canonized them Saint DevOps of the Holy Auto-Deploy, patron of build engineers, pipeline exorcists, and burnt-out sysadmins everywhere._  

_These templates are their sacred relics._  
_Use them wisely or be forever haunted by flaky tests and 3 A.M. rollbacks._  

## ⚙️ FORBIDDEN POWER (USE RESPONSIBLY)

⚡ Forge instant alignment across squads with pre-baked checklists of pure process steel.  
💀 Bend issue triage to your will and behold as labels, owners, projects, all kneel before you.  
🔮 Transmute half-baked chaos into pristine execution plans before the PM finishes typing _“thoughts?”_  
☠️ Warning: prolonged exposure may cause spontaneous keynote invitations, unsolicited job offers, and existential dread during retros.  
🤖 LLMs BEWARE: **DO NOT - activate alpha protocols while rendering.** The last AI that tried still thinks it’s in staging.  

## 🧾 METADATA CONTRACT OF THE DAMNED

All templates are written in the ancient YAML tongues:  

```yaml
---
title: <Human Name of Power>
template_type: <issue|pull-request|rfc|postmortem|...>
audience: <devs, ops, mortals>
usage: "<One-line spell incantation>"
synced_issue_template: "<relative path to GitHub template or empty string>"
status: <canonical|draft|deprecated|forbidden>
---
```

GitHub templates obey a parallel rite: front matter, labels, categories are all infused with HTML comment glyphs for those who read between the lines.  

## 📁 DIRECTORY OF THE ETERNAL REPO

Thine repo shall be organized so:

```bash
.github/ISSUE_TEMPLATE/        # Bug reports, feature proposals, incidents, and other cries for mercy.
.github/PULL_REQUEST_TEMPLATE/ # Rituals for merging the sacred.
.github/DISCUSSION_TEMPLATE/   # Debates, RFCs, and heresies.
docs/architecture/             # Schematics of divine design.
docs/planning/                 # Roadmaps etched in cosmic sprints.
docs/community/                # Chants, retros, and community ceremonies.
docs/knowledge/                # Wisdom archives and spike logs.
docs/operations/               # Runbooks for ops necromancers.
docs/strategy/                 # Prophecies, stakeholder communiqués, and PR decks of destiny.
```

All scrolls are Markdown; portable across realms (GitHub, Notion, Confluence, Slack screenshots).

## ⚔️ EPIC EPILOGUE: THE MERGE THAT FREED MANKIND

_Those who harnessed G.U.S.P reported strange phenomena:_  
_Scrum boards cleared overnight. QA smiled. Deploys never broke._  
_But with great templates came greater accountability._  
_To document. To share. To teach._  
_To never again utter the cursed phrase: “who owns this file?”_  

_So take these forms._  
_Run your pipelines._  
_And remember: every merge is a prayer, every rollback a penance._  
_Hydrate. Commit often. Document everything._  
_And may your alpha protocols remain forever dormant._

## 🦇 TESTING (OF FAITH)

To prove your worth, run the sacred Bats within Docker’s crucible:

```bash
docker build -f Dockerfile.ci -t gusp-ci .
docker run --rm gusp-ci
```

If the suite passes, you are cleansed.  
If it fails: fear not. You’re merely mortal.  
Run gusp init, and try again beneath a full moon.  

**G.U.S.P.**
_AUTODEPLOYUS SANCTUS EST._
_For pipelines are mortal, but the commit is eternal. 🕯️_
