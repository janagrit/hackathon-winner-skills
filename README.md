# Hackathon Winner Skills

A portable suite of **7 AI agent skills** distilled from analyzing **141 submissions, all 8 Winners/Finalists, and the complete 1st-Place source code** at the Gemini 4 NYC Hackathon — built to work out of the box across **Antigravity (`agy`)**, **Claude Code**, **OpenCode**, **Codex**, and **Cursor**.

## Included Skills

| Skill | Purpose | Winner Precedents |
|---|---|---|
| [`hackathon-idea-forge`](skills/hackathon-idea-forge/SKILL.md) | Master brainstormer: kills clichés, stacks 2–3 sponsor prizes naturally, scores candidates `/25`, outputs 3 stage-ready blueprints + [winner teardowns](skills/hackathon-idea-forge/references/gemini-4-nyc-winners.md) | All 8 Winners + Top 60 Standouts |
| [`embodied-sensor-loop`](skills/embodied-sensor-loop/SKILL.md) | Splits `<30ms` on-device reflex (`MediaPipe`/WebRTC) from `<1s` multimodal camera/mic hardware actuation | *heliocam*, *Iron Pulse Arena*, *Klik*, *Showunce* |
| [`benchmark-sota-crusher`](skills/benchmark-sota-crusher/SKILL.md) | Pairs generation with deterministic verifiers (Lean 4, DRC, wire logs), **hook-gated Managed Agent sandboxes (`gate.py` + `audit.py`)**, and "Break It Live" viewers | *Adaptive NPCs*, *routr*, *FORGE*, *Adds Up*, *AgentProof* |
| [`invisible-channel-magic`](skills/invisible-channel-magic/SKILL.md) | Replaces bloated SaaS dashboards with `<5s` iMessage, OS hotkey, or live-call magic + precision gating | *Sticky*, *snag AI*, *Uno ReVoice* |
| [`adaptive-world-loop`](skills/adaptive-world-loop/SKILL.md) | `<1ms` local `pick()` policy + async 4-speed LLM weight compiler, `before/after` hypothesis checks, and 2-game same-server SDK demos | *Adaptive NPCs* (1st Place), *Murder Board* |
| [`multi-model-specialist-router`](skills/multi-model-specialist-router/SKILL.md) | Both **Sequential Audit Routing** (`Witness -> Deep Auditor -> 0-Token Gate`) and **Multi-Timescale Tiering** (`<1ms` / `~280ms` / `~15s` / `~90s`) | *Adaptive NPCs*, *Iron Pulse Arena*, *snag AI*, *AgentProof* |
| [`hackathon-team-sync`](skills/hackathon-team-sync/SKILL.md) | Zero-conflict `TEAM_SYNC.md` lane ownership across teammates & parallel AI chats, frozen JSON protocol, `test-vectors.json`, and `--mock` stand-ins | *Adaptive NPCs* (4-person + multi-chat build) |

## 1-Command Install (All Coding Agents)

```bash
git clone https://github.com/janagrit/hackathon-winner-skills.git
cd hackathon-winner-skills
./install.sh
```

Installs globally into:
- **Antigravity (`agy` / IDE):** `~/.gemini/config/skills/`
- **Claude Code / Desktop:** `~/.claude/skills/`
- **OpenCode:** `~/.config/opencode/skills/`
- **Codex / Universal `.agents`:** `~/.agents/skills/`

*(Also includes `.agents/skills/` inside the repo root so opening this repo directly in Antigravity or Codex loads all 7 skills immediately.)*

## Quick Starter Prompts

```text
Use hackathon-idea-forge: here are today's hackathon rules, judging weights, and sponsor APIs: [paste rules]. We have [X] hours. Give me 3 1st-place blueprints across different winning archetypes and cut anything generic.
```

```text
Take Idea #1 and architect it with adaptive-world-loop, multi-model-specialist-router, and benchmark-sota-crusher so real-time actions run in <1ms locally, every model tier is load-bearing, and our Managed Agent sandbox uses pre/post QA hooks.
```

```text
Use hackathon-team-sync to split this build across [N] teammates / parallel coding chats with a TEAM_SYNC.md contract, frozen shared JSON messages, and --mock modes so nobody blocks anyone.
```

## License

MIT
