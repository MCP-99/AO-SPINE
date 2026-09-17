#!/usr/bin/env Rscript
# AO Spine predictive validity — meta-analysis
# Implements the statistical plan in protocol/protocol_en.md section 8.
# Input: data_extraction/data_extraction_form.csv (long format — see data_extraction/data_dictionary.md)

suppressPackageStartupMessages({
  library(meta)
  library(metafor)
  library(dplyr)
})

settings.meta(method.tau = "DL")  # DerSimonian-Laird random-effects, per protocol 8.1

data_path <- "data_extraction/data_extraction_form.csv"
out_dir <- "analysis/output"
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)

dat <- read.csv(data_path, stringsAsFactors = FALSE)

# ---- helper: run a binary-outcome meta-analysis with prespecified subgroups ----
run_binary_outcome <- function(dat, events_col, total_col, outcome_label, file_stem) {
  d <- dat %>% filter(!is.na(.data[[events_col]]), !is.na(.data[[total_col]]))
  if (nrow(d) == 0) {
    message("No data yet for outcome: ", outcome_label)
    return(invisible(NULL))
  }

  m <- metabin(
    event.e = d[[events_col]], n.e = d[[total_col]],
    event.c = rep(NA, nrow(d)), n.c = rep(NA, nrow(d)),  # placeholder: fill in comparator arm if doing A-vs-B/C style contrasts
    studlab = d$study_id,
    sm = "OR",
    method = "Inverse",
    data = d
  )

  print(summary(m))

  # Heterogeneity (protocol 8.2)
  cat(sprintf("\n%s — I^2 = %.1f%%, Cochran Q p = %.4f\n", outcome_label, m$I2 * 100, m$pval.Q))

  # Prespecified subgroups (protocol 8.3)
  for (subgroup_var in c("spinal_region", "ao_subgroup", "baseline_ais", "design")) {
    if (subgroup_var %in% names(d)) {
      sg <- update(m, byvar = d[[subgroup_var]])
      cat(sprintf("\n-- Subgroup: %s --\n", subgroup_var))
      print(summary(sg))
    }
  }

  # NOS-based subgroup (protocol 8.3, item 5): high (>6) vs low-moderate (<=6)
  if ("nos_or_rob2_score" %in% names(d)) {
    nos_numeric <- suppressWarnings(as.numeric(d$nos_or_rob2_score))
    if (any(!is.na(nos_numeric))) {
      nos_group <- ifelse(nos_numeric > 6, "high", "low_moderate")
      sg <- update(m, byvar = nos_group)
      cat("\n-- Subgroup: NOS quality --\n")
      print(summary(sg))
    }
  }

  # Forest plot
  pdf(file.path(out_dir, paste0(file_stem, "_forest.pdf")), width = 9, height = max(6, nrow(d) * 0.3))
  forest(m, studlab = TRUE)
  dev.off()

  # Publication bias (protocol 8.4): funnel + Egger/Begg if >=10 studies
  if (nrow(d) >= 10) {
    pdf(file.path(out_dir, paste0(file_stem, "_funnel.pdf")))
    funnel(m)
    dev.off()
    print(metabias(m, method.bias = "Egger"))
    tf <- trimfill(m)
    print(summary(tf))
  }

  m
}

# ---- helper: continuous outcomes (PROMs) ----
run_continuous_outcome <- function(dat, mean_col, sd_col, n_col, outcome_label, file_stem) {
  d <- dat %>% filter(!is.na(.data[[mean_col]]), !is.na(.data[[sd_col]]), !is.na(.data[[n_col]]))
  if (nrow(d) == 0) {
    message("No data yet for outcome: ", outcome_label)
    return(invisible(NULL))
  }

  m <- metacont(
    n.e = d[[n_col]], mean.e = d[[mean_col]], sd.e = d[[sd_col]],
    n.c = rep(NA, nrow(d)), mean.c = rep(NA, nrow(d)), sd.c = rep(NA, nrow(d)),  # placeholder comparator arm
    studlab = d$study_id,
    sm = "SMD",
    data = d
  )

  print(summary(m))
  pdf(file.path(out_dir, paste0(file_stem, "_forest.pdf")), width = 9, height = max(6, nrow(d) * 0.3))
  forest(m, studlab = TRUE)
  dev.off()
  m
}

# ==== Primary objective: neurological recovery (protocol 2.1) ====
m_primary <- run_binary_outcome(dat, "neuro_recovery_events", "neuro_recovery_total",
                                 "Neurological recovery (>=1 AIS grade)", "primary_neuro_recovery")

# ==== Secondary objectives (protocol 2.2) ====
m_complications <- run_binary_outcome(dat, "complications_events", "complications_total",
                                       "Surgical complications", "secondary_complications")

m_reoperation <- run_binary_outcome(dat, "reoperation_events", "reoperation_total",
                                     "Reoperation/revision", "secondary_reoperation")

m_ndi <- run_continuous_outcome(dat, "prom_ndi_mean", "prom_ndi_sd", "arm_n", "NDI", "prom_ndi")
m_odi <- run_continuous_outcome(dat, "prom_odi_mean", "prom_odi_sd", "arm_n", "ODI", "prom_odi")
m_vas <- run_continuous_outcome(dat, "prom_vas_mean", "prom_vas_sd", "arm_n", "VAS", "prom_vas")
m_sf36 <- run_continuous_outcome(dat, "prom_sf36_mean", "prom_sf36_sd", "arm_n", "SF-36", "prom_sf36")

# NOTE ON COMPARATOR ARMS
# The protocol's comparison (C) is between AO morphological subgroups (A vs B vs C), not a
# single-arm proportion. The `metabin`/`metacont` calls above compute pooled proportions/means
# per arm as a starting point; once data extraction is complete, restructure the comparator
# arm (n.c/event.c or n.c/mean.c/sd.c) using the paired reference subgroup (e.g. Type A as the
# reference) for a true between-subgroup effect size, or use `metaprop` if a purely descriptive
# pooled proportion per subgroup is what's needed instead.
