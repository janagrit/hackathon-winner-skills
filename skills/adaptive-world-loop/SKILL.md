---
name: adaptive-world-loop
description: >-
  Design closed-loop multi-agent worlds, adaptive game opponents, live
  simulation engines, and adversarial agent councils that evolve in real time.
  Use when building gaming AI, developer SDKs, simulation sandboxes, or
  multi-agent investigation and red-team systems.
license: MIT
---

# Adaptive World & Multi-Agent Loop

Turn static software, games, or document piles into **living closed-loop systems** that observe behavior, test hypotheses, and rewrite rules in real time — modeled directly on the source code of *Adaptive NPCs* (1st Place Overall + Best Use of Managed Agents), *Iron Pulse Arena* (Finalist), and *Murder Board*.

## When to Activate

- Brainstorming game AI, simulation environments, hardware-in-the-loop arenas, or multi-agent swarms
- Designing products that target Managed Agents, orchestration, or multi-agent prize tracks
- Packaging an agentic system as a reusable **plug-and-play SDK** for developers

## Blueprint A: The 1st-Place Zero-Latency Adaptive Opponent (*Adaptive NPCs*)

**Golden Rule: Never call an LLM synchronously inside a 60fps loop.** Instead, compile LLM reasoning into a tiny local JSON policy that runs in `<1ms`, and update that JSON asynchronously in the background:

1. **Local `<1ms` Policy Evaluator (`pick.js` / `pick.py`):**
   - Keep a pure 80-line function inside the client that evaluates:
     1. Ordered **`if/do` rules** on live facts/habits (`if player_position in ["left_short", "right_short"] -> do lob`), else
     2. **Weighted option scores** (`score = base + sum(weight * habit_value)`), sampling proportionally.
   - Swap new JSON `behaviour` versions **only between rounds/points**, so gameplay never stutters even if Wi-Fi drops.
2. **4-Speed Background Agent Loop (over 1 WebSocket):**
   - **Setup Designer (once, strong model):** Reads a 50-line plain-English `setup.json` (NPC decisions, events, camera views), invents 8–10 player habit variables (`0..1`), generates scripted practice personas, and headless-playtests to learn a counter-matchup table.
   - **Live Watcher (`~250–350ms`, 0-output-token Decisions API):** Every 1–3s, takes compact action summaries + `384px` JPEG frames (`court` + `player_cam`) and updates smoothed `0..1` habit scores.
   - **Background Adapter (`~5–15s`, fast/standard model):** Rewrites `when` weights and `rules` to aim for a **50% fair fight** (taking away the player's overused crutch rather than cheating with raw bot speed).
   - **Break-Time Deep Writer (`~90s`, Managed Agent sandbox):** During halftime/breaks, spins up a sandboxed agent that writes 3–6 candidate rule sets, simulates each against match facts, and keeps the one closest to `50%` win share.
3. **Closed-Loop Hypothesis Self-Check (`expect` -> `checks`):**
   - Every strategy update declares a testable prediction (`expect: "Cross-court forehand payoff should drop"`, `measure: "habit_payoff"`).
   - The *next* update computes `before` vs `after` (`0.80 -> 0.33, held: true`) and renders it on live `<npc-panel>` side screens!
4. **Prove It Is Plug-and-Play (2 Games, 1 Server):**
   - Demo **one live physical game** (e.g., BLE racket + webcam tennis) AND **one recorded/headless second genre** (e.g., tactical shooter) against the **exact same server**, changing only `setup.json`.
   - Include a headless A/B script (`adapt` vs `--no-adapt` across 300 replayed rounds) proving player win-rate converges toward `50%`.

## Blueprint B: Adversarial Contradiction Board (*Murder Board*, *Interlock*)

Instead of one agent summarizing a massive corpus:
1. **Distinct Epistemic Roles:** Spawn specialist agents over separate slices (timeline auditor, financial ledger checker, witness cross-examiner, physics/spec checker).
2. **Shared Contradiction Graph:** Agents post **falsifiable claims with exact page/timestamp citations**; peer agents earn credit by disproving claims with conflicting primary evidence.
3. **Visual Replay Surface:** Render discoveries on a live spatial graph or dual side-panel HUD so judges *watch* hypotheses rise, get tested, and flip.

## Stage Demo Rule: Show Adaptation Twice in 60 Seconds

- **0–20s:** Spam one obvious player habit (e.g., cross-court forehand) and win easily.
- **20–30s:** Point to the live side panel catching the habit (`"5 of 6 forehands went cross-court"`) and pushing `Behaviour v2` (`"Wait left_deep"`).
- **30–50s:** Try the exact same shot and get countered immediately.
- **50–60s:** Flash the 2nd game's `setup.json` + headless A/B win-rate table.

## Anti-Patterns

- Calling an LLM synchronously when the ball/bullet is in mid-air (instant lag death on stage).
- Sending raw 60Hz accelerometer dumps or 4K PNGs over the WebSocket instead of per-action features + `384px` JPEGs.
- "NPC chat" where you type dialogue to a villager with zero mechanical impact on gameplay or win rate.
