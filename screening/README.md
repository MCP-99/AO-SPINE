# Screening

Primary screening tool: **Rayyan** (rayyan.ai) — title/abstract screening for the **37 records** in Rayyan (PubMed + LILACS, deduplicated). Verified directly against the Rayyan export in `rayyan_export/articles.ris`.

`screening_tracking_template.csv` is a companion log, useful for:
- The **10 Cochrane CENTRAL records that could not be imported into Rayyan** (must be screened manually — enter them here).
- Recording third-reviewer consensus decisions and the reasoning behind them (Rayyan tracks Include/Exclude/Maybe per reviewer but this file gives a durable, versioned audit trail alongside the git history of this repo).
- Tracking stage 2 (full-text) screening, which happens after Rayyan stage 1.

`rayyan_37_ai_draft_screening.csv` is a **draft, Claude-assisted first pass** over the 37 Rayyan records against the protocol's eligibility criteria (§4) — see "AI-assisted draft pass" below for how to use it without compromising reviewer independence.

`Screening_AO_Spine.xlsx` is the file to send to co-investigators who don't have Rayyan access, or who prefer to work offline: it has an "Instrucciones" tab (PICO, inclusion/exclusion criteria, decision rule), the 37 Rayyan records with title+abstract, and the 10 Cochrane records (title only — no abstract available, see the tab's note). It ships blank (no AI draft decisions) so it doesn't bias independent screening.

## Simple screening rule (per project summary)

- **INCLUDE** if: uses the AO Spine classification AND reports at least one of the outcomes (neurological recovery, complications, reoperation, PROMs).
- **EXCLUDE** if: reliability/agreement study only, pediatric, narrative review, or does not use AO Spine.

## Process

1. Stage 1 (title/abstract): two independent reviewers evaluate each reference in Rayyan; disagreements go to consensus or a third reviewer (protocol §6.1).
2. Stage 2 (full text): eligibility of all preselected studies assessed against `protocol/protocol_en.md` §4; document every exclusion reason.
3. Export Rayyan decisions periodically and reconcile with `screening_tracking_template.csv`, especially for the 10 manually-screened Cochrane records.

## Record counts (final, verified against the Rayyan export, 2026-09-17)

- 61 records identified (35 PubMed + 10 Cochrane CENTRAL + 16 LILACS).
- **37 records in Rayyan** for title/abstract screening (PubMed + LILACS, deduplicated — 14 duplicates removed in the merge).
- 10 Cochrane CENTRAL records screened manually outside Rayyan (not importable — format incompatibility).
- 37 + 10 = **47 records for screening** in total.

See `search_strategy/search_strategies.md` for the full reconciliation (including a note on the registered PROSPERO protocol still showing the old n=9/60 figures), and `prisma_flow.html` for the flow diagram.

## Cochrane CENTRAL manual screening — status

Title/abstract screening done by one reviewer (`screening_tracking_template.csv`, rows `COCH-01`–`COCH-10`):
- **8 excluded** — mostly: doesn't use the AO Spine classification to predict outcomes, or is a trial registry without extractable outcome data.
- **2 to full-text review** — `COCH-01` (TLICS, 2023 Türkiye earthquake cohort) and `COCH-10` (direct decompression for thoracolumbar burst fractures with neurological compromise).

Still needed per protocol §6.1: a second, independent reviewer for these records, then consensus/third-reviewer for any disagreement.

## AI-assisted draft pass on the 37 Rayyan records

`rayyan_37_ai_draft_screening.csv` has a title/abstract-level Include/Exclude/Maybe draft for all 37 records, with a one-line rationale per record, produced against protocol §4 eligibility criteria. Draft breakdown: **6 Include, 17 Exclude, 14 Maybe** (Maybe = needs full text, mostly single-technique studies where an AO/TLICS/SLIC subgroup is present but not clearly the analytic exposure).

**Important for methodological integrity:** this is a speed-up aid, not one of the protocol's two required independent reviewers (§6.1).
- Reviewers 1 and 2 should do their own independent Rayyan screening **without looking at this file first**, to preserve masking.
- Afterward, use it as a third input when reconciling disagreements, or as a sanity check on the final Rayyan decisions — not as a substitute for a human third reviewer where the protocol calls for one.
