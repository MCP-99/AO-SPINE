# Full-text eligibility screening (stage 2)

Used after title/abstract screening (Rayyan 37 + Cochrane 10) narrows the pool to studies needing full-text review, per protocol §6.1 stage 2: *"eligibility of all preselected studies will be assessed; reasons for exclusion will be documented."*

`fulltext_eligibility_template.csv` has one row per study, one column per inclusion criterion from protocol §4.1 (mark `Y`/`N`/`Unclear`), plus a final decision:

| Column | Protocol §4.1 criterion |
|---|---|
| `crit_design_ok` | Prospective/retrospective observational, multicenter registry, or RCT |
| `crit_population_ok` | Adults (≥18y), cervical subaxial (C3–C7) or thoracolumbar (T1–L5) fracture/fracture-dislocation, separable from C0–C2 |
| `crit_classification_ok` | Explicit AO Spine classification (CSISS, SLIC, AO TL TLICS) or Magerl/AO mapped to AO subtype |
| `crit_outcome_ok` | Reports ≥1 prespecified outcome (neuro recovery, complications, reoperation, PROMs) with extractable quantitative data |
| `crit_followup_ok` | Minimum follow-up 3 months |
| `crit_samplesize_ok` | ≥20 patients per cohort |
| `crit_language_ok` | English, Spanish, or Portuguese |
| `crit_traumatic_ok` | Traumatic injury — **not** a pathological or osteoporotic fracture (added 2026-11-18 from the PROSPERO registration, CRD420261419101; this criterion was missing from the working protocol copies and has been added to §4.2) |

`final_decision`: `Include` only if all eight are `Y`. Otherwise `Exclude`, with `exclusion_category` set to one of the protocol §4.2 categories (`reliability_only`, `small_sample`, `mixed_c0c2`, `pediatric`, `pathological_osteoporotic`, `review_type`, `duplicate_data`, `other`) and a one-line `exclusion_reason` — this is what feeds the PRISMA flow diagram's "excluded at full text, with reasons" box.

**Retroactive check needed:** the 3 studies already marked `Include` (Adegeest, Donnarumma, Zou) were screened before this criterion was added to the working docs — confirm from the full text that none of their cohorts are pathological/osteoporotic fractures (traumatic mechanism is described for all three per the abstracts, so this is a low-risk check, not expected to change the decision).

For a study kept in (`Include`), move on to `data_extraction/data_extraction_form.csv` and `risk_of_bias/`.
