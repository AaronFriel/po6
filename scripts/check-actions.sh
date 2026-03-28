#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"

cd "$REPO_ROOT"

if [ ! -d .github/workflows ]; then
  echo "No .github/workflows directory found; skipping workflow audit."
  exit 0
fi

ACTIONLINT_BIN="$(scripts/install-actionlint.sh)"
"$ACTIONLINT_BIN"
