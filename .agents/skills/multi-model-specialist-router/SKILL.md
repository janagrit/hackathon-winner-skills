---
name: multi-model-specialist-router
description: >-
  Architect multi-model AI pipelines that assign distinct jobs to fast
  perception models, deep reasoning models, zero-output-token calibrated
  decision gates, and async Managed Agent sandboxes instead of relying on a
  single monolithic LLM call. Use when designing model orchestration,
  cost/latency budgets, or prize-winning multi-model architectures.
license: MIT
---

# Multi-Model Specialist Router

Never ask one monolithic model call to perceive raw media, compute exact math, run 60fps control, and emit calibrated routing probabilities all at once. Split your system using **two proven winner patterns**: **Sequential Audit Routing** (*AgentProof*, *snag AI*) and **Multi-Timescale Tiering** (*Adaptive NPCs* 1st Place, *Iron Pulse Arena*).

## When to Activate

- Designing the AI architecture for any multimodal, real-time, agentic, or verification workflow
- Choosing which model class handles `<1ms`, `<300ms`, `<15s`, and `~90s` jobs
- Making every model in your stack genuinely load-bearing rather than decorative

## Pattern 1: Sequential Specialist Pipeline (Verification & Commerce)

```text
Raw Video / Audio / Docs ──> [1. Fast Eyes] ──> Structured Facts (no judging)
                                                      │
Raw Wire / Ground State  ─────────────────────────────┼──> [2. Deep Auditor] ──> Exact Math & Cross-Check
                                                      │                                  │
                                                      └──────────────────────────────────┴──> [3. Calibrated Gate]
                                                                                              (0 output tokens: P(ok),
                                                                                               route choice, severity)
```

1. **Fast Perception ("The Witness" — e.g., `Hydrogen` / Flash-Lite):** **Transcribe, never judge.** Output timestamped visible facts (`cart_items`, `displayed_total`, `feint_direction`). Mixing perception with judgment lets fake UI banners fool the model.
2. **Deep Reasoning ("The Accountant" — e.g., `Carbon` / Pro):** Compute expected state **from first principles** (`expected_total` to `$0.01`) AND pass a **raw bypass anchor** (`final.png` + HTTP/MCP wire log) directly to Stage 2 so a Stage 1 slip cannot blind the auditor.
3. **Calibrated Decision Gate ("The Release Gate" — e.g., `gemini-decision-1`, `0` output tokens):** Emit calibrated probability `P(ok)`, failure taxonomy `choice`, and severity `score` (`0–2`). *Note:* Zero-output-token classifiers have no arithmetic scratchpad — feed Stage 2's computed delta into Stage 3 when cent-level math matters, or run Stage 3 standalone when `<300ms` latency matters most.

## Pattern 2: Multi-Timescale Latency Tiering (1st-Place Real-Time Loop)

When your app runs live (games, cameras, physical sensors), route by **how long the user/loop can wait** (`WRITER_TIERS` from *Adaptive NPCs*):

| Budget | Tier | What Runs | Job |
|---|---|---|---|
| **`< 1 ms`** | **Local Policy** | Pure JS/Python (`pick()`) | Evaluates cached JSON weights + `if/do` rules on every frame/action with **zero network wait**. |
| **`~250–350 ms`** | **Live Watcher** | `gemini-decision-1` (`0` output tokens) | Scores 8–10 live user habits (`0..1`) from recent events + `384px` JPEG frames every 1–3s. |
| **`< 10 s`** | **Fast Writer** | `gemini-4-hydrogen` (`thinking="low"`) | Quick tactical weight tweak between rapid 8-second rounds. |
| **`10–30 s`** | **Standard Writer** | `gemini-4-neon` (`thinking="low"`) | Full behaviour JSON rewrite + plain-English explanation + `before/after` hypothesis check. |
| **`one-time` / `90–120 s`** | **Setup / Deepest** | `gemini-4-carbon` (setup) or **Managed Agent** (halftime break) | Carbon designs initial tracked variables once at startup; Managed Agent writes & sandbox-tests 3–6 candidate rule sets during breaks. |

**Resilience details from 1st Place:**
- Reuse one persistent HTTP/SDK client per process so TLS stays warm (`~280ms` Decisions API calls).
- Wrap API calls in automatic **API-key fallback rotation** on `HTTP 402/429` so live stage demos never die on quota exhaustion.

## Ablation Proof Pattern

Benchmark `Single Monolithic Call` vs. `Specialist Pipeline` (or `Adapt` vs. `--no-adapt`) on saved logs. Showing `73% -> 100%` catch rate or win-rate converging to `50%` proves your multi-model split is doing real work.

## Anti-Patterns

- Calling 3 models sequentially with the exact same generic prompt.
- Leaving `thinking` level unset on mid-loop calls (default high thinking can blow a 15s window past 60s).
- Failing to strip `{ thought: true }` scratchpad parts before JSON-parsing responses from thinking models.
