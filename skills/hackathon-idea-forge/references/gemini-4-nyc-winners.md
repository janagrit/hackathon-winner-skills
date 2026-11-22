# Empirical Breakdown: Gemini 4 NYC Hackathon Winners & Standouts

Distilled from 141 submissions at the **Gemini 4 NYC Hackathon** (`cerebralvalley.ai/e/gemini-4-nyc/hackathon/gallery`). Use these real examples to anchor brainstorming in concrete, judge-proven mechanics.

---

## Overall & Track Winners

### 1. Adaptive NPCs — *1st Place Overall + Best Use of Managed Agents*
- **Hook:** Plug-and-play game SDK (`setup.json` + 1 WebSocket + 90-line `pick.js`) demoed live with a **physical M5 BLE gyro tennis racket + player webcam + 3D court** AND a **CS:GO** demo running on the *exact same* backend.
- **Under-the-hood implementation (`GavinWongYF/gemini-hackathon`):**
  1. **Zero-latency `<1ms` local `pick.js`:** The game *never* waits on an LLM to move. `pick()` evaluates JSON `if/do` rules + `base + weight * habit_value` locally at 60fps, swapping updated JSON brains *only between rounds*.
  2. **4-speed Gemini split:** `Designer` (`gemini-4-carbon`, once at setup) invents 8–10 player habits + fake personas and headless-playtests matchups; `Watcher` (`gemini-decision-1`, `~280ms`, 0 output tokens) scores habits `0..1` from events + `384px` JPEGs; `Adapter` (`gemini-4-hydrogen`/`neon`, `~5–15s`) rewrites weights toward a **50% fair fight** and verifies `before` vs `after` hypothesis `checks`; `Deepest Writer` (**Managed Agent** on match breaks, `~90–120s`) explores multiple candidate rule sets in a persistent cloud sandbox.
  3. **Managed Agent QA Hooks:** Injected `.agents/skills/playtest/SKILL.md`, `evaluate.py`, `gate.py` (`pre_tool_execution` blocking saves into `/workspace/library/` without a passing `/workspace/tests/<name>.json`), and `audit.py` (`post_tool_execution` SHA-256 fingerprint check).
  4. **Zero-collision team execution:** `TEAM_SYNC.md` gave each teammate/parallel AI chat strict folder ownership (`hardware/`, `scene/`, `engine/`, `agents/`) bridged by one frozen protocol + shared `test-vectors.json`.

### 2. routr — *2nd Place Overall*
- **Hook:** Autonomous PCB trace router that beat `freerouting`, `PCBRouter`, and frontier LLMs on `PCBWorld`'s hardest circuit boards (**`7/10` solved vs `<5/10` prior best**).
- **Why it won:** Picked a hard, unsexy, high-dollar physical engineering problem with an **existing public benchmark (`PCBWorld`)**, combined vision + agent council + decision models in an iterative loop, and walked on stage with an indisputable SOTA score delta.

### 3. heliocam — *3rd Place Overall*
- **Hook:** iPhone camera app where Gemini *controls the camera hardware itself* — watching the live viewfinder to set ISO, shutter speed, focus, white balance, and zoom, coaching framing, and applying 1-second voice edits ("make it warmer").
- **Why it won:** Inverted the AI paradigm from *post-processing filter* to **real-time actuator**, running directly on an iPhone judges could hold in their hands.

### 4. Klik — *Finalist*
- **Hook:** Snap a photo of any broken appliance or unlabelled object -> generates an interactive **3D part-by-part exploded guide** with real screw specs plus a live video/audio repair coach.
- **Why it won:** Visceral physical-to-3D transformation solving a universal frustration (missing/terrible manuals).

### 5. Iron Pulse Arena — *Finalist*
- **Hook:** Turns a laptop webcam into a 3D boxing ring (`MediaPipe` pose + live heart rate). `Hydrogen` reads short clips for feints/leans, `Neon` plans between rounds, `Decision-1` switches the rival's fighting style live, and raising your hand post-match unlocks the rival's jacket on Shopify.
- **Why it won:** Unforgettable physical stage demo + **textbook multi-model specialization** (`fast clip watcher -> round planner -> 0-token style switcher -> commerce`).

### 6. Sticky — *Finalist*
- **Hook:** Text raw phone clips to an **iMessage** number and receive a finished, trend-aware edited Reel back in the exact same text thread.
- **Why it won:** **Zero UI.** No website, no timeline editor, no login — pure consumer magic in a channel everyone already uses 50x/day.

### 7. State of the Art (FORGE) — *Best Use of Shopify (1st Place)*
- **Hook:** Natural-language prompt -> interactive 3D hardware assembly, PCB layout, and BOM, **mathematically verified in Lean 4** (auto-repairing constraint violations) and wired to live **Shop MCP** component sourcing & pricing.
- **Why it won:** Paired generative design with **formal mathematical verification (Lean 4)** AND made commerce load-bearing (real live BOM sourcing & cost trade-offs).

### 8. snag AI — *Best Use of Shopify (2nd Place)*
- **Hook:** Press one OS shortcut and click *anything* on your screen (inside a YouTube video, stream, or photo) -> uses ambient screen/audio context (`Screenpipe`) + Gemini 4 identification + **Decisions API match gating** + **Shop MCP** instant cart/Shop Pay.
- **Why it won:** Ambient OS-level UX ("buy anything on screen in 1 hotkey") with a calibrated precision gate preventing bad lookalike matches.

---

## High-Signal Mechanics from Top Featured Projects

- **Showunce / Wordless / First Pour:** Show a physical hands-on procedure *once* on camera; the AI induces the state machine and calls out loud the exact second a learner skips or swaps a step.
- **Adds Up:** Live no-login SEC balance-sheet auditor — click Apple's filing, **mutate or hide any number right on the page**, and watch the verification catch the discrepancy live.
- **Murder Board / Interlock:** Put 10 specialized agents on a 1,000-page homicide file or chemical plant change package; refuse sign-off until every cross-document contradiction and math check reconciles.
- **Will it?:** Point your phone camera at two real objects and ask *"Will this fit inside that?"* for spoken spatial-physics reasoning.
- **Gemini Game Engine:** Rip deterministic physics/state machines out of 2D arcade games and run the **Decisions API** live inside the game loop.
- **Blindspot:** Audits healthcare websites by actually navigating them *only* with the `Tab` key or a screen reader, exposing real accessibility blockers.
- **AgentProof / Tripwire / Glint:** Adversarial agent verification — inject real faults/traps into stores or bug recordings, measure false-success "lies" against hidden server ground truth, and prove `100%` catch rate with `0` false alarms.
