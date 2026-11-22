---
name: invisible-channel-magic
description: >-
  Design zero-UI AI products delivered inside channels and surfaces users
  already live in — iMessage/SMS, global OS hotkeys, phone calls, browser
  overlays, or native camera viewfinders. Use when brainstorming viral consumer
  or commerce hackathon ideas with under-5-second time-to-value.
license: MIT
---

# Invisible Channel Magic

Delete the SaaS dashboard. Deliver the entire AI product inside **an existing habit or single OS gesture** where time-to-magic is under 5 seconds — modeled on *Sticky* (Finalist — raw video over iMessage -> finished Reel back in-thread), *snag AI* (Shopify 2nd Place — 1 hotkey to buy anything inside any video/photo), and *Uno ReVoice* (live phone-call handoff).

## When to Activate

- Brainstorming consumer, creator, productivity, or commerce hackathon ideas
- Simplifying a bloated web app whose UI is getting in the way of the core magic trick
- Designing a pitch that makes a 200-person audience pull out their phones immediately

## The Zero-UI Surface Menu

Before building a React dashboard with a sidebar, test if the whole product can live inside one of these surfaces:

| Surface | User Action (`<3 seconds`) | Magic Reply | Winner Precedent |
|---|---|---|---|
| **iMessage / WhatsApp / SMS** | Text a raw video, photo, receipt, or voice note | Finished edited video, structured artifact, or booked action arrives in the same thread | *Sticky* |
| **Global OS Hotkey / Crosshair** | Press `Cmd+Shift+S` and click *anything* on screen (YouTube frame, Zoom call, PDF) | Instant floating card with verified exact product match + 1-click Shop Pay | *snag AI* |
| **Live Phone Call** | Tap merge/handoff or dial a phone number | Real-time voice agent negotiates, translates, or screens the caller live | *Uno ReVoice*, *VoicePizza* |
| **Ambient Browser Companion** | Just browse normally — no prompt needed | Context-aware overlay intervenes *only* when you drift off-goal or hit a trap | *Goal Goose*, *Tripwire* |
| **Email Forward (`do@...')** | Forward a messy thread, contract, or fax | Verified redline, calendar hold, or reconciled ledger replies in-thread | Zero-onboarding B2B |

## 3 Rules for Invisible-Channel Demos

1. **Use Ambient Context so the User Doesn't Have to Type:** Combine what was on screen or spoken in the last 30 seconds (transcript, URL, frame crop) so a 1-click gesture has enough context to find the *exact* item, not a generic lookalike (*snag AI*).
2. **Put a Precision Gate Before Surfacing Results:** Ambient tools become annoying if they hallucinate. Gate every suggestion or match through a fast calibrated classifier (e.g., `Decisions API` confidence threshold) before popping UI or sending a message.
3. **Keep Human Approval at the Irreversible Boundary:** Let AI do 99% of search, editing, or cart building autonomously, and stop at a single 1-tap approval (Shop Pay link, "Reply YES to send") so safety is effortless.

## Anti-Patterns

- Requiring account signup, OAuth onboarding, or a settings wizard during a hackathon demo.
- Building a custom chat interface when iMessage, Telegram, Slack, or a browser extension overlays real life 10x better.
