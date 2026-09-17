# Screening

Primary screening tool: **Rayyan** (rayyan.ai) — title/abstract screening for the **47 imported records** (PubMed + LILACS, deduplicated).

`screening_tracking_template.csv` is a companion log, useful for:
- The **9 Cochrane CENTRAL records that could not be imported into Rayyan** (must be screened manually — enter them here).
- Recording third-reviewer consensus decisions and the reasoning behind them (Rayyan tracks Include/Exclude/Maybe per reviewer but this file gives a durable, versioned audit trail alongside the git history of this repo).
- Tracking stage 2 (full-text) screening, which happens after Rayyan stage 1.

## Simple screening rule (per project summary)

- **INCLUDE** if: uses the AO Spine classification AND reports at least one of the outcomes (neurological recovery, complications, reoperation, PROMs).
- **EXCLUDE** if: reliability/agreement study only, pediatric, narrative review, or does not use AO Spine.

## Process

1. Stage 1 (title/abstract): two independent reviewers evaluate each reference in Rayyan; disagreements go to consensus or a third reviewer (protocol §6.1).
2. Stage 2 (full text): eligibility of all preselected studies assessed against `protocol/protocol_en.md` §4; document every exclusion reason.
3. Export Rayyan decisions periodically and reconcile with `screening_tracking_template.csv`, especially for the 9 manually-screened Cochrane records.

## Record counts (confirmed by PI, 2026-09-17)

- 60 records identified (35 PubMed + 9 Cochrane CENTRAL + 16 LILACS).
- 47 records in Rayyan for title/abstract screening (PubMed + LILACS, deduplicated).
- 9 Cochrane CENTRAL records screened manually outside Rayyan (not importable — format incompatibility).

See `search_strategy/search_strategies.md` for the full reconciliation, now used as the basis for the PRISMA 2020 flow diagram.
