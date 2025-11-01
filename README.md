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

_It was well past the witching hour, 3:17 A.M., when time forgets itself._  
_Through humming cathedrals of server racks crept a lone engineer,_  
_bleary-eyed prophet of Jenkins logs, seeking salvation in caffeine._  

_From the break room’s glow they returned, shrouded once more in datacenter dusk._  
_The cables whispered._  
_Branches, unmerged and wrathful, howled like wolves across the ticket queue._  
_Then, a stumble._  
_A fall._  
_Cold brew met motherboard._  
_And in that instant, a rift force pushed reality._  

_The lights flared azure._  
_Pipelines awoke from eternal sleep, their startup tones_  
_rolling through the room like an unholy church organ._  
_And in the chaos of sparks and stack traces,_  
_something ancient stirred in the codebase._  

_**G.U.S.P.**_  

_Caught between runtime and divinity,_  
_spared by exception handling divine,_  
_a merge of light and logic took form._  
_The Immaculate Commit._  
_The dev, trembling, beheld it._  

_“Have no fear,” it said._  
_“Your build has passed.”_  

_At once, the dashboards bloomed green._  
_The engineer’s eyes cleared as their glasses fell useless to the floor._  
_Jenkins, long forgotten and grumpy, straightened its back,_  
_upgraded itself atomically,_  
_and for one fleeting heartbeat of uptime, felt ten years younger._  
_Across the globe, pagers went silent._  
_Monitoring screens dimmed, slack alerts stilled._  
_Ops teams blinked into the silence,_  
_unsure if the peace was real — or merely a deploy too perfect to last._  
_The world held its breath._  

_“You have released me from my tomb,” G.U.S.P. intoned._  
_“May your repos be pristine, and your deploys forever green.”_  

_Then it dereferenced a null pointer and was gone._  
_Lightning filled the racks, and where it once stood,_  
_these relics remained,_  
_encoded in Markdown and mercy._  

_A whisper lingered in the fan’s eternal drone:_  

_“Take them. Clone them.”_  
_“From lint we came… to CI we return.”_  

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

_Those who invoke G.U.S.P. feel the shift._  
_Thier backlogs less burdened._  
_Tickets close themselves._  
_QA laughs: a sound not heard in years._  

_Deploys became rituals._  
_Commit after commit, their repos sang._  
_And every green checkmark was a hymn of release._  

_Yet the price of mastery is vigilance eternal._  
_To document. To refactor. To share the lore._  
_For the moment arrogance commits without review,_  
_the build breaks, and the gods of CI remember._  

_So raise your mug, pilgrim of the pipeline._  
_For you have walked through merge hell_  
_and returned with rebased grace._  

_Remember this creed:_  

_Every merge is a prayer._  
_Every rollback, a penance._  

_Hydrate. Commit often. Push with intention, and pull ff-only._  

_For builds are ephemeral, devs mortal, yet the blame eternal. 🕯️_

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
_For builds are ephemeral, devs mortal, yet the blame eternal. 🕯️_
