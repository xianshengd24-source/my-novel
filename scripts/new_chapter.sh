#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <chapter-number>" >&2
  exit 1
fi

num="$1"
file="chapters/chapter-$(printf '%03d' "$num").md"

if [[ -e "$file" ]]; then
  echo "Chapter already exists: $file" >&2
  exit 1
fi

cat > "$file" <<TEMPLATE
# Chapter $(printf '%03d' "$num"): Draft Stub

- Scene goal:
- Conflict:
- Outcome:
TEMPLATE

echo "Created $file"
