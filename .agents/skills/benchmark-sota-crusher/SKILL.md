---
name: benchmark-sota-crusher
description: >-
  Design AI engineering systems that pair generative models with deterministic
  verifiers (compilers, formal provers, DRC checkers, fault-injected ground
  truth) to beat established benchmarks. Use when building developer tools,
  hardware/CAD/finance/legal verifiers, or rigorous benchmark-backed hackathon
  projects.
license: MIT
---

# Benchmark & Proof Crusher

Win technical judges by picking a **hard, high-value engineering problem with an objective machine oracle**, wrapping AI inside a **Generate → Verify → Repair** loop, and proving a clean score jump over existing baselines — modeled on *routr* (2nd Place, `7/10` vs `<5/10` on `PCBWorld`), *FORGE* (1st Place Shopify, Lean 4 hardware verification), *Adds Up*, and *AgentProof*.

## When to Activate

- Brainstorming technically deep projects for engineering-heavy judging panels
- Designing systems in CAD/PCB, formal verification, finance/accounting audit, security, accessibility, or agent reliability
- Turning a "generative AI makes X" idea into "generative AI makes **provably valid** X"

## The 4-Part Winning Formula

### 1. Pick a Domain With a Deterministic Oracle
Never grade your own output with "LLM-as-a-judge" if a real machine oracle exists:
- **Hardware / Physical:** KiCad DRC, SPICE simulation, Lean 4 constraint proofs (*FORGE*), `PCBWorld` routing completion (*routr*), G-code collision checks.
- **Software / Agents:** Compiler/typechecker, Playwright + hidden server order/wire ground truth (*AgentProof*), keyboard-only `Tab` reachability (*Blindspot*), unit test reproduction of screen-recorded bugs (*Glint*).
- **Finance / Legal / Ops:** Exact cent-level balance-sheet reconciliation (*Adds Up*), cross-document numeric/date consistency (*Interlock*, *Murder Board*).

### 2. Run an Iterative Propose → Check → Repair Loop
Single-shot generation loses on hard constraints. Feed the oracle's exact violation trace (DRC coordinates, Lean 4 failed proof obligation, `$0.01` delta) back to a reasoning model to patch only the failing region until the oracle returns `PASS` or the step budget ends honestly.

### 3. Benchmark Fairly Against Real Baselines
Always include **3 rows** in your results table so the delta is undeniable:
1. **Status quo / naive baseline** (e.g., `trust` agent self-report, legacy `freerouting` algorithm).
2. **Single-call frontier model baseline** (same strong model, 1 call — isolates your *architecture* from raw model size).
3. **Your full specialist + verifier system** (plus a `-blind` ablation removing prompt hints if applicable).

### 4. Build an Interactive "Break It Live" Viewer
Hard engineering projects lose if the demo is just a terminal log. Build a zero-login web viewer (*Adds Up*, *AgentProof*) where a judge can:
- Click a preset hard case in 1 second,
- **Mutate a number or toggle a hidden bug live**, and
- Watch the baseline get fooled while your verifier catches the exact line/cent/trace violation.

## Anti-Patterns

- Reporting mock or hand-labeled numbers as benchmark results.
- Claiming `100%` without also reporting **false-alarm rate** on clean passing cases.
- Hiding limitations — concisely stating sample size and failure boundaries builds massive credibility with technical judges.
