# Cochrane RoB 2.0 — randomized controlled trials

Used per protocol §7 for any RCTs identified (the eligibility criteria in protocol §4.1 allow RCTs alongside observational designs).

Each domain (`d1`–`d5`) and `overall_judgment` take one of: `low`, `some_concerns`, `high`.

| Column | Domain |
|---|---|
| `d1_randomization_process` | Bias arising from the randomization process |
| `d2_deviations_from_intended_interventions` | Bias due to deviations from intended interventions |
| `d3_missing_outcome_data` | Bias due to missing outcome data |
| `d4_measurement_of_outcome` | Bias in measurement of the outcome |
| `d5_selection_of_reported_result` | Bias in selection of the reported result |
| `overall_judgment` | `high` if any domain is `high`, or if there are `some_concerns` in multiple domains that together lower confidence substantially; otherwise `some_concerns` if any domain is `some_concerns`; else `low`. |

Disagreements between assessors resolved by consensus (protocol §7).
