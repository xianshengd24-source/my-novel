# Writing Pipeline Agent Guide

## Repository layout
- `series/`: High-level planning docs for the book/series.
- `chapters/`: Chapter drafts and revisions.
- `ledger/`: Decision logs, continuity records, and canon tracking.
- `qa/`: Review checklists and quality findings.
- `scripts/`: Small automation scripts for drafting workflows.

## Workflow rules
1. Keep chapter files in Markdown and use zero-padded numbering (e.g., `chapter-001.md`).
2. Update `ledger/continuity.md` whenever canonical facts change.
3. Run `scripts/run_qa.sh` before opening a PR.
