#!/usr/bin/env bash
# Installs the 6 Hackathon Winner Skills across Antigravity, Claude Code,
# OpenCode, and Codex (.agents) global skill directories.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS=(
  hackathon-idea-forge
  embodied-sensor-loop
  benchmark-sota-crusher
  invisible-channel-magic
  adaptive-world-loop
  multi-model-specialist-router
)

TARGETS=(
  "${HOME}/.gemini/config/skills"
  "${HOME}/.claude/skills"
  "${HOME}/.config/opencode/skills"
  "${HOME}/.agents/skills"
)

for target in "${TARGETS[@]}"; do
  mkdir -p "${target}"
  for skill in "${SKILLS[@]}"; do
    rm -rf "${target}/${skill}"
    cp -R "${ROOT}/skills/${skill}" "${target}/${skill}"
  done
  echo "Installed ${#SKILLS[@]} skills -> ${target}"
done

echo "Done! Start a new session in Antigravity, Claude Code, OpenCode, or Codex to use them."
