---
name: hackathon-team-sync
description: >-
  Split a hackathon repository cleanly across 2-4 teammates or parallel AI
  coding sessions with strict folder ownership, frozen wire contracts, shared
  test vectors, and offline mock modes so integration works on the first try
  with zero merge conflicts. Use at the start of any team or multi-agent build.
license: MIT
---

# Hackathon Team & Multi-Agent Sync

Eliminate the #1 killer of ambitious hackathon teams — **hour-18 merge conflicts and broken integration** — using the exact `TEAM_SYNC.md` + frozen-contract workflow from *Adaptive NPCs* (1st Place Overall at Gemini 4 NYC, where 4 teammates + 3 parallel Antigravity chats built hardware, 3D graphics, game physics, and a multi-model Python server simultaneously).

## When to Activate

- Kicking off a 2–4 person hackathon project (right after picking the idea with `hackathon-idea-forge`)
- Running **multiple parallel coding agent chats** (e.g., Hardware chat + UI chat + Backend/Agents chat) on the same repo
- Integrating cross-language components (e.g., TypeScript frontend/game engine + Python AI server + BLE/webcam hardware)

## Step 1: Create `TEAM_SYNC.md` + `.agents/rules/team-boundaries.md` in Hour 1

Before writing feature code, create `TEAM_SYNC.md` at the repo root and auto-inject it via `.agents/rules/team-boundaries.md` (and `CLAUDE.md`) so **every human and AI chat enforces strict folder ownership**:

```markdown
# Team & Multi-Chat Sync Contract

## 1. Strict Folder Ownership (DO NOT EDIT OUTSIDE YOUR LANE)
| Owner / Chat | Owned Paths | Responsibility |
|---|---|---|
| Track A: Hardware / Input | `client/src/hardware/*` | Sensor/webcam capture -> emits normalized events |
| Track B: 3D / Visual UI | `client/src/scene/*`, `public/*` | Pure rendering from `stateRef` props |
| Track C: Core App / Engine | `client/src/engine/*`, `shared/*` | State machine, calls local `pick()` + WS client |
| Track D: AI Agents Backend | `agents/*` (`server/`, `sdk/`, `eval/`) | Multi-model pipeline, Managed Agent sandbox, eval |
```

**Rule:** An agent or teammate **never edits** files in another track's folder. Cross-track changes require updating `shared/` + `TEAM_SYNC.md` first.

## Step 2: Freeze One Thin Wire Protocol (`shared/` + Plain JSON)

Connect frontend/engine and AI backend over **one simple transport** (1 WebSocket or 2 HTTP endpoints) where every message is a flat JSON object with `type` and `session_id`:
- Keep domain names **owned by the client** (`setup` declares valid options/zones/events once; the server echoes those exact strings back).
- **Boil sensors down at the edge:** Never stream 60Hz raw IMU floats or 4K PNGs to the AI track — send 1 event per action (`power: 0..1`, `side: "forehand"`) + `384px` JPEGs at `~1 fps`.

## Step 3: Share Cross-Language `test-vectors.json`

Whenever logic is mirrored in two languages (e.g., `pick.js` in the browser and `pick.py` in the Python evaluator/sandbox):
- Check in **one `sdk/test-vectors.json` file** containing 15–20 tricky edge cases (empty inputs, ties, negative weights, rule overrides, seeded RNG).
- Assert both JS and Python pass the exact same vectors in `<1 second` so simulation matches live demo behavior 100%.

## Step 4: Every Track Ships a Zero-Dependency Stand-In Mode

No track may ever sit idle waiting on another teammate's server, API key, or hardware:
- **Hardware track:** Provide keyboard/click fallback (`triggerManualSwing()`) so the app works when the BLE device or camera isn't plugged in.
- **AI server track:** Ship `--mock` (deterministic fake updates with zero API keys) AND a saved `sample-stream.jsonl` replay mode (`?stream=sample.jsonl`) so UI panels can be styled offline in seconds.
- **UI / Side panels:** Build drop-in custom elements (`<npc-panel side="left">`) that render cleanly when connected and fail silently (draw nothing, never crash) if the backend is down.

## Anti-Patterns

- Letting 3 parallel AI coding chats edit `App.tsx` or `server.py` at the same time.
- Waiting until 1 hour before submission to connect the frontend to the Python server for the first time.
- Hardcoding brittle ports/URLs instead of environment variables (`AGENT_HOST`, `--mock`, `?replay=1`) with graceful offline fallbacks.
