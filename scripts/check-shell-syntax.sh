#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"

cd "$REPO_ROOT"

mapfile -t shell_files < <(git ls-files '*.sh' '.agent/*.sh' 'scripts/*.sh' 'test/*.sh' 'test/**/*.sh')

if [ "${#shell_files[@]}" -eq 0 ]; then
  echo "No shell files found."
  exit 0
fi

bash -n "${shell_files[@]}"
