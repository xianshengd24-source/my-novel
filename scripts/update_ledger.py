#!/usr/bin/env python3
from pathlib import Path
from datetime import date
import sys

if len(sys.argv) < 2:
    print("Usage: update_ledger.py <decision text>", file=sys.stderr)
    raise SystemExit(1)

decision = " ".join(sys.argv[1:]).strip()
ledger_path = Path("ledger/decisions.md")
ledger_path.parent.mkdir(parents=True, exist_ok=True)

if not ledger_path.exists():
    ledger_path.write_text("# Decisions\n\n", encoding="utf-8")

content = ledger_path.read_text(encoding="utf-8")
entry = f"## {date.today().isoformat()}\n- {decision}\n"

if content.endswith("\n"):
    content += "\n" + entry
else:
    content += "\n\n" + entry

ledger_path.write_text(content, encoding="utf-8")
print(f"Updated {ledger_path}")
