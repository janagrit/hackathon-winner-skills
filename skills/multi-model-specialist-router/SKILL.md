---
name: multi-model-specialist-router
description: >-
  Architect multi-model AI pipelines that assign distinct jobs to fast
  perception models, deep reasoning models, and zero-output-token calibrated
  decision gates instead of relying on a single monolithic LLM call. Use when
  designing model orchestration, cost/latency budgets, or prize-winning
  multi-model architectures.
license: MIT
---

# Multi-Model Specialist Router

Never ask one monolithic model call to perceive raw media, compute exact math, and emit calibrated routing probabilities all at once. Split the pipeline into **specialist stages matched by model class** — proven across winners like *Iron Pulse Arena*, *snag AI*, *routr*, *Five Sigma Review*, and *AgentProof*.

## When to Activate

- Designing the AI architecture for any multimodal, agentic, or verification workflow
- Optimizing accuracy, latency, and token cost across a model family (fast perception vs. deep reasoning vs. classifier/decision endpoints)
- Explaining *why* each model in your stack is load-bearing rather than decorative

## The 3-Specialist Reference Architecture

```text
Raw Video / Audio / Docs ──> [1. Fast Eyes] ──> Structured Facts (no judging)
                                                      │
Raw Wire / Ground State  ─────────────────────────────┼──> [2. Deep Auditor] ──> Exact Math & Cross-Check
                                                      │                                  │
                                                      └──────────────────────────────────┴──> [3. Calibrated Gate]
                                                                                              (0 output tokens: P(ok),
                                                                                               route choice, severity)
```

### Stage 1: Fast Perception ("The Witness")
- **Model class:** Fast, low-latency multimodal model (e.g., `Hydrogen` / Flash-Lite / Flash).
- **Strict rule:** **Transcribe, never judge.** Output timestamped visible facts (`cart_items`, `displayed_total`, `feint_direction`, `ocr_fields`). Mixing perception with judgment causes the model to trust misleading UI banners.

### Stage 2: Deep Reasoning ("The Accountant / Planner")
- **Model class:** Strongest reasoning model (e.g., `Carbon` / Pro / thinking model).
- **Strict rule:** Compute expected state **from first principles** (`expected_total` down to `$0.01`, formal constraints, cross-round strategy) AND pass a **raw bypass anchor** (e.g., `final.png` + deterministic HTTP/MCP wire log) directly to Stage 2 so a Stage 1 perception slip cannot blind the auditor.

### Stage 3: Calibrated Decision Gate ("The Release Gate")
- **Model class:** Closed-set decision/classifier endpoint (e.g., `POST /v1beta/decisions` / `gemini-decision-1`, `0` output tokens) or logprob router.
- **Strict rule:** Emit three structured machine signals in one pass instead of prose:
  1. **Calibrated probability** (`P(succeeded)` — auto-pass `>=0.90`, human review `0.10–0.90`, block `<0.10`).
  2. **Taxonomic route** (`choice` over actionable failure buckets: `silent_drop`, `wrong_total`, `over_budget`).
  3. **Severity rubric** (`score` `0–2` to prioritize alerts).
- **Calibration caveat:** Zero-output-token classifiers have no scratchpad for multi-step arithmetic — run Stage 2's math check *before* Stage 3 when cent-level calculation matters, or use Stage 3 standalone as a `<200ms` triage filter when speed matters most.

## Ablation Proof Pattern

Whenever time permits, benchmark **both** `Single Monolithic Call` (using the *same* strong Stage 2 model) and `Multi-Specialist Pipeline` on the exact same saved runs. Showing that 1 monolithic call gets `73%` while splitting perception + reasoning + wire log hits `100%` proves your architecture is doing real work.

## Anti-Patterns

- Calling 3 models sequentially that all repeat the exact same generic prompt.
- Letting a downstream stage trust an upstream summary without forwarding raw deterministic anchors (wire logs, status codes, final image).
- Failing to strip `{ thought: true }` scratchpad parts before JSON-parsing responses from thinking models.
