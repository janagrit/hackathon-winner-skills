# Hackathon Winner Skills

A portable suite of **6 AI agent skills** distilled from analyzing **141 submissions and all 8 Winners/Finalists** at the Gemini 4 NYC Hackathon — built to work out of the box across **Antigravity (`agy`)**, **Claude Code**, **OpenCode**, **Codex**, and **Cursor**.

## Included Skills

| Skill | Purpose | Winner Precedents |
|---|---|---|
| [`hackathon-idea-forge`](skills/hackathon-idea-forge/SKILL.md) | Master brainstormer: kills clichés, stacks 2–3 sponsor prizes naturally, scores candidates `/25`, outputs 3 stage-ready blueprints + [winner teardowns](skills/hackathon-idea-forge/references/gemini-4-nyc-winners.md) | All 8 Winners + Top 60 Standouts |
| [`embodied-sensor-loop`](skills/embodied-sensor-loop/SKILL.md) | Splits `<30ms` on-device reflex (`MediaPipe`/WebRTC) from `<1s` multimodal camera/mic hardware actuation | *heliocam*, *Iron Pulse Arena*, *Klik*, *Showunce* |
| [`benchmark-sota-crusher`](skills/benchmark-sota-crusher/SKILL.md) | Pairs generation with deterministic verifiers (Lean 4, DRC, wire logs) + interactive "Break It Live" judge viewer | *routr*, *FORGE*, *Adds Up*, *AgentProof* |
| [`invisible-channel-magic`](skills/invisible-channel-magic/SKILL.md) | Replaces bloated SaaS dashboards with `<5s` iMessage, OS hotkey, or live-call magic + precision gating | *Sticky*, *snag AI*, *Uno ReVoice* |
| [`adaptive-world-loop`](skills/adaptive-world-loop/SKILL.md) | Designs closed-loop adaptive opponents, 2-endpoint game SDKs, and adversarial multi-agent contradiction boards | *Adaptive NPCs* (1st Place), *Murder Board* |
| [`multi-model-specialist-router`](skills/multi-model-specialist-router/SKILL.md) | Wires `Fast Witness -> Deep Math/Plan Auditor (+ raw wire anchor) -> 0-Token Calibrated Gate` | *Iron Pulse Arena*, *snag AI*, *AgentProof* |

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

*(Also includes `.agents/skills/` inside the repo root so opening this repo directly in Antigravity or Codex loads all 6 skills immediately.)*

## Quick Starter Prompts

```text
Use hackathon-idea-forge: here are today's hackathon rules, judging weights, and sponsor APIs: [paste rules]. We have [X] hours. Give me 3 1st-place blueprints across different winning archetypes and cut anything generic.
```

```text
Take Idea #1 and run it through invisible-channel-magic and multi-model-specialist-router so there's zero dashboard bloat, every model has a load-bearing job, and the live stage demo hits in under 60 seconds.
```

```text
Use benchmark-sota-crusher on this idea: what deterministic oracle can verify our output without hand-labeling, what 3 baselines should we compare against, and how do we build a zero-login "break it live" viewer for judges?
```

## License

MIT
