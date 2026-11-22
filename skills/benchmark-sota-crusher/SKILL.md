---
name: benchmark-sota-crusher
description: >-
  Design AI engineering systems that pair generative models with deterministic
  verifiers (compilers, formal provers, DRC checkers, fault-injected ground
  truth, and hook-gated Managed Agent sandboxes) to beat established benchmarks.
  Use when building developer tools, hardware/CAD/finance/legal verifiers,
  Managed Agent prize entries, or rigorous benchmark-backed hackathon projects.
license: MIT
---

# Benchmark & Proof Crusher

Win technical judges by picking a **hard engineering problem with an objective machine oracle**, wrapping AI inside a **Generate → Verify → Gate → Repair** loop, and walking on stage with an indisputable score table — modeled on *Adaptive NPCs* (Best Use of Managed Agents), *routr* (2nd Place, `7/10` vs `<5/10` on `PCBWorld`), *FORGE* (1st Place Shopify, Lean 4), *Adds Up*, and *AgentProof*.

## When to Activate

- Brainstorming technically deep projects for engineering-heavy judging panels
- Targeting **Best Use of Managed Agents** or code-execution / verification tracks
- Designing systems in CAD/PCB, formal verification, finance/accounting audit, security, accessibility, or agent QA

## The 5-Part Winning Formula

### 1. Pick a Domain With a Deterministic Oracle
Never grade your own output with "LLM-as-a-judge" when a machine oracle exists:
- **Hardware / Physical:** KiCad DRC, SPICE simulation, Lean 4 constraint proofs (*FORGE*), `PCBWorld` completion (*routr*).
- **Software / Agents / Games:** Playwright + hidden server order/wire ground truth (*AgentProof*), offline match simulator `evaluate.py` (*Adaptive NPCs*), keyboard-only `Tab` reachability (*Blindspot*).
- **Finance / Legal / Ops:** Exact cent-level balance-sheet reconciliation (*Adds Up*), cross-document date/math consistency (*Interlock*).

### 2. Iterative Propose → Check → Repair Loop
Single-shot generation loses on hard constraints. Feed the oracle's exact violation trace (DRC coordinates, Lean 4 failed proof obligation, `$0.01` delta, or missing schema field) back to the model to repair until the oracle returns `passed: true`.

### 3. The "Best Use of Managed Agents" Sandbox Gate Pattern (*Adaptive NPCs*)
When using a remote **Managed Agent** (`/v1beta/interactions` with `environment: {"type": "remote", "sources": [...]}`), don't treat it like a slow chat API — turn the sandbox into a **self-verifying factory**:
1. **Inject Skills & Tools via `sources`:** Pre-load `.agents/AGENTS.md`, a custom `.agents/skills/playtest/SKILL.md`, and a deterministic `/workspace/tools/evaluate.py` (stdlib-only, zero network).
2. **Enforce Pre-Tool & Post-Tool QA Hooks (`.agents/hooks.json`):**
   - **`pre_tool_execution` (`gate.py`):** Block any write/copy into `/workspace/library/<name>.json` unless `/workspace/tests/<name>.json` already exists with `"passed": true`, and block agent writes to `tools/`, `tests/`, and `hook_log/`.
   - **`post_tool_execution` (`audit.py`):** Compute a SHA-256 fingerprint of saved artifacts in `/workspace/library/` and verify they match the exact fingerprint recorded by `evaluate.py` (catching post-test tampering!).
3. **Host Re-Verification + Persistent Library:** Re-score the returned winning candidate on your host server with the exact same `evaluate.py`, and reuse `environment_id` across runs so `/workspace/library/` accumulates proven winners over time.

### 4. Benchmark Fairly Against 3 Baselines
Always show **3 rows** in your proof table:
1. **Naive / status-quo baseline** (`trust` agent self-report, `--no-adapt` static bot, legacy `freerouting`).
2. **Single-call frontier model baseline** (same strong model in 1 call — isolates your *architecture* from raw model size).
3. **Your full specialist + verifier system** (plus a `-blind` ablation removing prompt hints where applicable).

### 5. Build a Zero-Login "Break It Live" Viewer
Pair your benchmark with an interactive web viewer (*Adds Up*, *AgentProof*) where a judge clicks a preset case in 1 second, **toggles a bug or mutates a number live**, and watches the baseline fail while your verifier catches the exact violation.

## Anti-Patterns

- Reporting mock or hand-labeled numbers as real benchmark results.
- Letting an autonomous agent declare `"done"` without a mechanical hook or host-side verifier checking its output file.
- Claiming `100%` catch rate without also reporting **false-alarm rate** on clean passing runs.
