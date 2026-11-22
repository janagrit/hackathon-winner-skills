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

Turn static software, games, or document piles into **living closed-loop systems** that observe behavior, debate hypotheses, and mutate the world or opponent in real time — modeled on *Adaptive NPCs* (1st Place + Best Managed Agents), *Iron Pulse Arena* (Finalist), *Gemini Game Engine*, *Werewolf League*, and *Murder Board*.

## When to Activate

- Brainstorming game AI, simulation environments, robotics sandboxes, or multi-agent swarms
- Designing products that target Managed Agents, orchestration, or multi-agent prize tracks
- Packaging an agentic system as a reusable **plug-and-play SDK** for developers

## Two Winning Blueprints

### Blueprint A: Closed-Loop Adaptive Opponent + World Mutator (*Adaptive NPCs*, *Iron Pulse*)
Instead of scripted NPCs that repeat fixed behavior trees:
1. **Telemetry Collector:** Stream compact player state every few seconds (accuracy, dodges, hesitation, weapon/route habits, heart rate).
2. **Difficulty & Novelty Director (Planner Agent):** Diagnose *why* the player is winning effortlessly or getting frustrated; prescribe tactical counter-moves **and** environment mutations (new cover, terrain, hazards, quests) to keep the player in flow.
3. **Real-Time Policy Switcher (<200ms):** Use a fast 0-output-token decision gate to switch behavior states frame-by-frame without stalling gameplay.
4. **SDK Packaging:** Wrap the loop behind 2 endpoints (`ingestTelemetry()`, `nextDirective()`) and demo it plugged into a real playable game on stage.

### Blueprint B: Adversarial Contradiction Board (*Murder Board*, *Interlock*, *AgenticSwarms*)
Instead of one agent summarizing a massive corpus:
1. **Assign Distinct Epistemic Roles:** Spawn named specialist agents over different slices (timeline auditor, financial ledger checker, witness cross-examiner, physics/engineering checker).
2. **Shared Contradiction Graph:** Agents post **falsifiable claims with exact page/timestamp citations**; peer agents earn points only by disproving a claim with conflicting evidence.
3. **Visual Replay Surface:** Render the swarm's discoveries as a live spatial graph, timeline scrubber, or Gource-style replay so judges can *see* multi-agent reasoning happen.

## Stage Demo Rule: Show Adaptation Twice in 60 Seconds

A "adaptive" system only convinces judges if they **watch it adapt live**:
- Round 1 (0–25s): Repeat one obvious player exploit (e.g., spam left hook / camp one corner) and win easily.
- Adaptation HUD (25–35s): Show the agent diagnosing the habit on screen (*"Player leans left before jab — switching rival to counter-hook stance"*).
- Round 2 (35–60s): Try the exact same exploit and get countered immediately.

## Anti-Patterns

- "NPC chat" where you type dialogue to a villager with no impact on gameplay mechanics or world state.
- Multi-agent swarms that burn 3 minutes talking to each other in terminal logs with no visual state board or falsifiable output.
