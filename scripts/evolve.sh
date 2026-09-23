#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -f "prompts/evolve.md" ]]; then
  echo "Missing prompts/evolve.md" >&2
  exit 1
fi

for required in index.html styles.css script.js README.md AGENTS.md prompts/current.md; do
  [[ -f "$required" ]] || { echo "Missing required file: $required" >&2; exit 1; }
done

echo "EvoDesign evolution runner prepared in: $ROOT_DIR"
echo "Prompt: prompts/evolve.md"
echo "Cron is intentionally not configured."

if [[ "${EVODESIGN_RUN_CODEX:-0}" != "1" ]]; then
  echo "Dry preparation only. Set EVODESIGN_RUN_CODEX=1 in a deliberate future run to invoke Codex."
  exit 0
fi

if ! command -v codex >/dev/null 2>&1; then
  echo "Codex CLI is not installed or not on PATH; no evolution was run." >&2
  exit 1
fi

RUN_DATE="$(date +%F)"
RUN_LOG="logs/${RUN_DATE}-manual-run.log"
codex exec --sandbox workspace-write "$(cat prompts/evolve.md)" | tee "$RUN_LOG"
