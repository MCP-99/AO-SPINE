# Newcastle-Ottawa Scale (NOS) — cohort studies

Used per protocol §7. Max 9 stars across 3 domains. High risk of bias defined as **NOS ≤5/9**.

| Domain | Item | Column | Max stars |
|---|---|---|---|
| Selection | Representativeness of the exposed cohort | `selection_representativeness_exposed` | ★ |
| Selection | Selection of the non-exposed cohort | `selection_selection_nonexposed` | ★ |
| Selection | Ascertainment of exposure (AO Spine subgroup) | `selection_ascertainment_exposure` | ★ |
| Selection | Demonstration outcome of interest not present at start | `selection_outcome_not_present_at_start` | ★ |
| Comparability | Comparability on the basis of design/analysis — main factor (e.g., baseline AIS) | `comparability_control_main_factor` | ★ |
| Comparability | Comparability — additional factor (e.g., age, injury mechanism) | `comparability_control_additional_factor` | ★ |
| Outcome | Assessment of outcome | `outcome_assessment` | ★ |
| Outcome | Follow-up long enough for outcomes to occur (≥3 months per protocol §4.1) | `outcome_followup_length_adequate` | ★ |
| Outcome | Adequacy of follow-up of cohorts (loss to follow-up) | `outcome_adequacy_followup` | ★ |

Enter `1` (star awarded) or `0` per column, sum into `total_stars`, and set `risk_category` to `high` if `total_stars <= 5`, else `low_moderate`.

This feeds the prespecified subgroup analysis in protocol §8.3 (NOS high >6 vs. low-moderate ≤6).
