#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$REPO_ROOT"
scripts/install-prek.sh
export PATH="$HOME/.local/bin:$PATH"
exec prek run --all-files
