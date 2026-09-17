# Screening

Primary screening tool: **Rayyan** (rayyan.ai) — title/abstract screening for the **47 imported records** (PubMed + LILACS, deduplicated).

`screening_tracking_template.csv` is a companion log, useful for:
- The **10 Cochrane CENTRAL records that could not be imported into Rayyan** (must be screened manually — enter them here).
- Recording third-reviewer consensus decisions and the reasoning behind them (Rayyan tracks Include/Exclude/Maybe per reviewer but this file gives a durable, versioned audit trail alongside the git history of this repo).
- Tracking stage 2 (full-text) screening, which happens after Rayyan stage 1.

## Simple screening rule (per project summary)

- **INCLUDE** if: uses the AO Spine classification AND reports at least one of the outcomes (neurological recovery, complications, reoperation, PROMs).
- **EXCLUDE** if: reliability/agreement study only, pediatric, narrative review, or does not use AO Spine.

## Process

1. Stage 1 (title/abstract): two independent reviewers evaluate each reference in Rayyan; disagreements go to consensus or a third reviewer (protocol §6.1).
2. Stage 2 (full text): eligibility of all preselected studies assessed against `protocol/protocol_en.md` §4; document every exclusion reason.
3. Export Rayyan decisions periodically and reconcile with `screening_tracking_template.csv`, especially for the 10 manually-screened Cochrane records.

## Record counts (confirmed by PI, 2026-09-17)

- 61 records identified (35 PubMed + 10 Cochrane CENTRAL + 16 LILACS).
- 47 records in Rayyan for title/abstract screening (PubMed + LILACS, deduplicated).
- 10 Cochrane CENTRAL records screened manually outside Rayyan (not importable — format incompatibility).

See `search_strategy/search_strategies.md` for the full reconciliation (including a note on the registered PROSPERO protocol still showing the old n=9/60 figures), and `prisma_flow.html` for the flow diagram.

## Cochrane CENTRAL manual screening — status

Title/abstract screening done by one reviewer (`screening_tracking_template.csv`, rows `COCH-01`–`COCH-10`):
- **8 excluded** — mostly: doesn't use the AO Spine classification to predict outcomes, or is a trial registry without extractable outcome data.
- **2 to full-text review** — `COCH-01` (TLICS, 2023 Türkiye earthquake cohort) and `COCH-10` (direct decompression for thoracolumbar burst fractures with neurological compromise).

Still needed per protocol §6.1: a second, independent reviewer for these records, then consensus/third-reviewer for any disagreement.
