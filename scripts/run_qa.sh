#!/usr/bin/env bash
set -euo pipefail

printf 'Running markdown file inventory...\n'
find series chapters ledger qa -type f -name '*.md' | sort

printf '\nChecking required files...\n'
required=(
  "series/premise.md"
  "chapters/chapter-001.md"
  "ledger/continuity.md"
  "qa/checklist.md"
)

for f in "${required[@]}"; do
  [[ -f "$f" ]] || { echo "Missing required file: $f" >&2; exit 1; }
  echo "OK: $f"
done

printf '\nQA checks passed.\n'
