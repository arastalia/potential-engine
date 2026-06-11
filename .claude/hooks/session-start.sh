#!/bin/bash
# SessionStart hook for Claude Code on the web.
# Installs the project (with dev dependencies) so tests and linters are ready.
# Idempotent and non-interactive — safe to run on every session start.
set -euo pipefail

# Only run in the remote (Claude Code on the web) environment.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-.}"

# Best-effort pip upgrade; ignore failures on system-managed pip installs.
python3 -m pip install --upgrade pip >/dev/null 2>&1 || true
python3 -m pip install -e ".[dev]"

# Make the src/ layout importable without an editable reinstall.
if [ -n "${CLAUDE_ENV_FILE:-}" ]; then
  echo "export PYTHONPATH=\"${CLAUDE_PROJECT_DIR:-.}/src\"" >> "$CLAUDE_ENV_FILE"
fi
