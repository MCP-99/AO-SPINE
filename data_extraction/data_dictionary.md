# Data extraction — data dictionary

`data_extraction_form.csv` is in **long format**: one row per *study × AO subgroup arm* (e.g., a study reporting outcomes separately for Type A, B, and C contributes 3 rows). This maps directly onto `metabin`/`metacont` (R `meta` package) inputs for the subgroup meta-analysis specified in protocol §8.3, without reshaping.

Field mapping to protocol §6.2:

| Column | Protocol field | Notes |
|---|---|---|
| `study_id` | — | Short unique key, e.g. `Smith2019` |
| `author`, `year`, `country`, `design`, `recruitment_period`, `funding_source` | Study data | `design`: `prospective` \| `retrospective` \| `rct` \| `registry` |
| `spinal_region` | Population data | `subaxial_cervical` \| `thoracolumbar` |
| `classification_system` | Classification | `AO_CSISS` \| `SLIC` \| `AO_TLICS` \| `AO_TL` \| `Magerl_mapped` |
| `ao_subgroup` | Classification | e.g. `A0`,`A1`...`A4`,`B1`,`B2`,`B3`,`C`, or the coarse `A`/`B`/`C` if subtypes aren't reported |
| `n_modifier`, `m_modifier` | Classification | Neurological (N0–N4, NX) / case-specific (M) modifiers, if reported for the arm |
| `arm_n` | Population data | Total n in this arm |
| `mean_age`, `pct_male`, `injury_mechanism`, `baseline_ais` | Population data | `baseline_ais`: AIS/ASIA grade at admission for this arm (A/B/C/D/E) |
| `treatment`, `surgical_approach`, `surgical_timing_days` | Treatment | `treatment`: `surgical` \| `conservative` |
| `followup_mean_months`, `loss_to_followup_pct` | Follow-up | |
| `neuro_recovery_events` / `_total` | Primary outcome | n patients with ≥1 AIS grade improvement / N evaluable — binary, feeds `metabin` |
| `complications_events` / `_total` | Secondary outcome | Surgical complications — binary |
| `reoperation_events` / `_total` | Secondary outcome | Reoperation/revision — binary |
| `prom_ndi_mean/_sd`, `prom_odi_mean/_sd`, `prom_vas_mean/_sd`, `prom_sf36_mean/_sd`, `asia_motor_mean/_sd` | Secondary outcome (PROMs) | Continuous — feeds `metacont` (SMD) |
| `nos_or_rob2_score` | Risk of bias | NOS total (0–9) for cohorts, or RoB2 overall judgment (`low`/`some_concerns`/`high`) for RCTs — see `risk_of_bias/` |
| `extracted_by`, `extraction_date` | — | For dual-extraction audit trail |
| `notes` | — | Free text (e.g., how ambiguous subtypes/outcomes were resolved) |

## Process notes

- Two independent extractors per protocol convention; reconcile any numeric mismatch before merging into the master CSV.
- If a study reports the primary outcome only pooled across subgroups (not per AO subtype), still add one row per subgroup with `neuro_recovery_events`/`_total` left blank, and note the limitation — this keeps population/classification data usable for descriptive tables even where it can't feed the effect-size meta-analysis.
- "Duplicate data" per protocol §4.2: when a cohort appears in two publications, only extract from the one with the largest sample size or longest follow-up; note the excluded duplicate's `study_id` in `notes`.
