# Screening

**Title/abstract screening stage: CLOSED (confirmed by PI, 2026-10-21).** Final result: **15 records to full text** (11 Rayyan + 4 Cochrane), **32 excluded** (26 Rayyan + 6 Cochrane). See `rayyan_37_consensus_final.csv` and `screening_tracking_template.csv` for the final per-record decisions, and `PROGRESS.md` for the list of the 15. Next stage: full-text eligibility screening — see `fulltext_eligibility_template.csv` / `fulltext_eligibility_guide.md`.

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

## Final consensus — status (closed 2026-10-21)

All 47 records (37 Rayyan + 10 Cochrane) have a final consensus decision from the 3 reviewers, confirmed by the PI:
- **Cochrane (10):** 4 Include (`COCH-02`, `COCH-03`, `COCH-04`, `COCH-10`), 6 Exclude.
- **Rayyan (37):** 11 Include, 26 Exclude.

During reconciliation, 11 records were flagged for a second look (7 Rayyan + 1 Cochrane excluded as "no AO" despite using TLICS/SLIC — both accepted AO Spine systems per protocol §4.1; one pediatric record left unmarked; one exclusion with no reason despite reporting an AO-type breakdown; and two Cochrane records that reversed an earlier independent assessment). The PI reviewed all 11 and confirmed the team's original consensus decisions, closing the one unmarked record (`RAY-05`, pediatric) as Exclude. See `rayyan_37_consensus_final.csv` (`flag_review`/`flag_note` columns) for the full record of what was flagged and how it was resolved.

## Historical: AI-assisted draft pass on the 37 Rayyan records

`rayyan_37_ai_draft_screening.csv` was a title/abstract-level Include/Exclude/Maybe draft produced before the reviewers' own independent screening, used only as a cross-check once their consensus came in — not as one of the protocol's two required independent reviewers (§6.1). Kept here for the audit trail.
