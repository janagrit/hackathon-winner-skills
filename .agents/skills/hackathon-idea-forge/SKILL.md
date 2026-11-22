---
name: hackathon-idea-forge
description: >-
  Generate, pressure-test, and rank 1st-place hackathon project ideas using
  empirical patterns from winning AI hackathon submissions. Use when the user
  asks to brainstorm hackathon ideas, pick a project for a competition, stack
  sponsor prizes naturally, or turn a hackathon theme and API list into a
  winning demo blueprint.
license: MIT
---

# Hackathon Idea Forge

Turn any hackathon prompt, sponsor API list, and time budget into **high-conviction, demo-first project blueprints** modeled on real 1st-place winners — never generic chat wrappers, CRUD dashboards, or vague pitchware.

Read [references/gemini-4-nyc-winners.md](./references/gemini-4-nyc-winners.md) whenever you need concrete winner teardowns or inspiration across hardware, vision, games, benchmarks, and commerce.

## When to Activate

- Starting a new hackathon and brainstorming what to build
- Choosing between 2–5 candidate ideas under a 6–36 hour clock
- Mapping required sponsor APIs (models, routers, commerce, voice, hardware) into one coherent product instead of bolted-on gimmicks
- Sharpening an "okay" idea into an undeniable 90-second live stage demo

## Step 1: Collect Inputs (Fast)

Extract from the user or event page (ask only if missing):
1. **Judging rubric & weights** (e.g., 20% specific API, 30% live demo, 25% technical depth).
2. **Required technologies & side-prize tracks** (stack 2–3 prizes into *one* natural loop).
3. **Team strengths & hardware on hand** (iPhone, webcam, smart glasses, local GPU, domain expertise).
4. **Time remaining** (e.g., 8h sprint vs. 24h build).

## Step 2: Apply the Anti-Cliché Kill Filter

Immediately **discard** any idea matching these losing patterns:
- **Chat-sidebar wrappers:** "Chat with your PDF / codebase / calendar / database."
- **Passive dashboards:** Analytics screens where the user still does the work manually.
- **Unverifiable claims:** "AI agent that automates X" with no live visual proof or objective score.
- **Bolted-on sponsor APIs:** Calling a sponsor endpoint on a settings page unrelated to the core magic moment.
- **Login walls:** Anything judges cannot try in `<5 seconds` from a URL, camera, or SMS.

## Step 3: Cross-Pollinate the 4 Winning Archetypes

Generate at least one candidate from each relevant archetype (combine with sibling skills when deeper design is needed):

1. **Embodied Sensor / Controller Loop (`embodied-sensor-loop`):** AI takes direct real-time control of a camera, webcam, microphone, or physical workflow instead of sitting in chat (e.g., *heliocam* auto-setting camera ISO/shutter live; *Iron Pulse Arena* webcam 3D boxing; *Klik* photo-to-3D repair coach).
2. **Objective Benchmark / Proof Crusher (`benchmark-sota-crusher`):** Beat an established domain benchmark or pair AI generation with a deterministic verifier like Lean 4, DRC rules, or wire-log ground truth (e.g., *routr* beating PCB routers `7/10` vs `<5/10` on `PCBWorld`; *FORGE* verifying generated hardware in Lean 4; *AgentProof* catching `25/25` agent lies).
3. **Invisible Channel / Ambient Shortcut (`invisible-channel-magic`):** Zero custom app UI — live inside iMessage, a global OS hotkey over any video, or a phone call (e.g., *Sticky* texting raw clips to iMessage and getting an edited Reel back; *snag AI* pointing at any YouTube frame to buy via Shopify).
4. **Closed-Loop Adaptive World (`adaptive-world-loop`):** Real-time telemetry mutates opponents, game physics, or multi-agent investigations on the fly, packaged as an arena or 3-line developer SDK (e.g., *Adaptive NPCs* 1st Place; *Murder Board* 10-agent contradiction finder).

## Step 4: Score Every Candidate on the 5-Axis Winner Rubric

Rate each candidate `1–5` on all five axes (reject anything `<20/25`):

| Axis | Score 1 (Loses) | Score 5 (Wins) |
|---|---|---|
| **1. 5-Second Hook** | Needs a 2-minute backstory | Judge gets it in 1 sentence ("Text raw video -> get edited Reel back") |
| **2. Visceral Live Demo** | Typing into a text box | Moving on webcam, pointing a phone, mutating a number live, or watching a score climb |
| **3. Load-Bearing Tech** | One LLM prompt could fake it | Every required model/API has a distinct, irreplaceable job (`multi-model-specialist-router`) |
| **4. Undeniable Proof** | "Look, the text sounds nice" | Hard metric (`7/10` vs `5/10`, `25/25` caught, Lean 4 proof green, real cart created) |
| **5. Buildability in Time** | Needs 5 external OAuth approvals | Core magic loop runs locally in `<2 hours`; zero brittle dependencies |

## Step 5: Output Format (3 Ranked Winner Blueprints)

Present **3 distinct ideas**, ordered by score, each with:
- **One-Line Pitch:** `<15 words` a judge will repeat to other judges.
- **The 60-Second Stage Demo:** Exact second-by-second script of what happens live on screen.
- **Load-Bearing Architecture:** Specific job of every model/sponsor API (no filler).
- **The Proof Hook:** What objective benchmark, mathematical check, or live physical action proves it works.
- **Hour-by-Hour MVP Cutline:** What to build in Hours 1–2 (the magic core), Hours 3–5 (proof + UI), and what to cut ruthlessly.

## Anti-Patterns

- Proposing generic "AI assistant / copilot for X" ideas with no visceral 60-second demo moment.
- Stacking 5 sponsor APIs that dilute the core loop instead of 2–3 load-bearing ones.
- Waiting until the final hour to build the verification benchmark or live judge viewer.
