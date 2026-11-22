---
name: embodied-sensor-loop
description: >-
  Design real-time camera, webcam, microphone, and hardware-control AI
  products where the model acts as a live sensor-controller loop instead of a
  chat box. Use when brainstorming or architecting computer-vision coaches,
  webcam games, smart-camera tools, accessibility guides, or physical-world AI
  demos.
license: MIT
---

# Embodied Sensor Loop

Build AI products where the model **watches/listens to the physical world and directly actuates controls, 3D overlays, or spoken coaching in real time** — modeled on winners like *heliocam* (3rd Place), *Iron Pulse Arena* (Finalist), *Klik* (Finalist), and *Showunce*.

## When to Activate

- Brainstorming demos that use a phone camera, laptop webcam, smart glasses, or microphone
- Turning a static image/video analysis idea into an interactive live stage demo
- Designing low-latency multimodal pipelines that feel instantaneous (`<500ms` local feedback + async model intelligence)

## Core Design Pattern: Split Reflex From Intelligence

Never put a 2-second cloud LLM call directly inside a 60fps UI render loop. Split into two speeds:

1. **0–30ms On-Device Reflex Layer:**
   - Use browser `MediaPipe` (pose/hands/face), WebAudio VAD, optical flow, WebGL/Three.js, or native camera APIs (`AVFoundation` / WebRTC) for instant visual feedback and tracking.
2. **300ms–2s Multimodal Brain Layer:**
   - Sample keyframes or short 1–2s rolling clips into a fast perception model (e.g., `Hydrogen` / Flash) to emit **structured control commands or state deltas** — never prose paragraphs.
3. **Actuator Output (Not Chat):**
   - Drive hardware/UI parameters directly: camera ISO/shutter/zoom (*heliocam*), 3D exploded part highlights (*Klik*), opponent stance switches (*Iron Pulse Arena*), or 3-word spoken interruptions the moment a human hand skips a step (*Showunce*).

## 4 High-Winning Embodied Product Blueprints

1. **AI Takes the Controls:** Find a complex manual control panel (camera pro settings, synth/DAW knobs, microscope/drone framing, lighting rig) and let vision set the dials continuously while explaining why in 5 words.
2. **One-Shot Physical Coach:** Watch an expert perform a physical task once (origami, espresso dial-in, CPR, soldering, physical therapy), extract the step graph, then watch a novice live on webcam and interrupt *only* when a step is skipped or unsafe.
3. **Photo-to-Interactive 3D Twin:** Turn a single photo of a broken device, room floorplan, or circuit into an interactive Three.js exploded diagram with real part specs and step-by-step assembly verification.
4. **Full-Body Webcam Arena:** Map real human movement (`MediaPipe`) against an AI rival that studies your habits across 15-second micro-clips and adapts strategy between rounds.

## Stage Demo Checklist

- Must work on stage lighting and noisy venue Wi-Fi: include a **1-click recorded camera stream fallback** alongside live webcam/iPhone input.
- Display a tiny **live telemetry HUD** showing exactly what the model sees and what control signal it just fired so judges know it isn't scripted.

## Anti-Patterns

- Uploading a static photo, waiting 12 seconds for a spinner, and rendering a Markdown essay.
- Speaking 40-word TTS paragraphs while the user is mid-motion (cap live voice cues at `<6 words`).
