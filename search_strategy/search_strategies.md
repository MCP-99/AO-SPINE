# Search strategy

Source: `protocol/protocol_en.md` §5 (executed search, as registered in PROSPERO).

## Databases searched

| Database | Search date | Period covered | Results |
|---|---|---|---|
| PubMed/MEDLINE | 2026-08-12 | 2011 – present | 35 |
| Cochrane CENTRAL | 2026-08-12 | 2016 – present | 10 |
| LILACS (BVS) | 2026-08-12 | 2016 – present | 16 |
| **Total identified** | | | **61** |

**Known limitations:**
- EMBASE and Scopus excluded — no institutional access at CEMIC.
- The 10 Cochrane CENTRAL records could not be imported into Rayyan due to a format incompatibility; these must be screened manually outside Rayyan (see `screening/README.md`).

## Record-count reconciliation (final, verified against the actual Rayyan export, 2026-09-17)

The original "37 records" figure was actually **correct** — it referred to the Rayyan library count, not the total screening pool. Earlier working notes in this file incorrectly assumed 47 records were in Rayyan; that was corrected once the real Rayyan export (`screening/rayyan_export/articles.ris`) was reviewed directly (37 records: 35 from PubMed's 654530328-series Rayyan IDs, 2 from LILACS/SciELO/BVS). Verified breakdown:

- PubMed/MEDLINE (35) + LILACS (16) = 51 records combined for Rayyan import.
- Rayyan's own deduplication reduced this to **37 unique records** (14 duplicates removed — almost certainly Latin American studies indexed in both PubMed and LILACS).
- **10 Cochrane CENTRAL records** could not be imported into Rayyan (format incompatibility) and are tracked separately for manual screening — see `screening/README.md`.
- 37 (Rayyan) + 10 (manual) = **47 records for screening**, out of 61 identified (35 + 10 + 16).

This is the figure to use for the PRISMA 2020 flow diagram: identification n = 61; duplicates removed n = 14; records screened n = 47 (37 in Rayyan + 10 manual).

⚠️ **Note for the PI:** `protocol/protocol_en.md` and `protocol/protocol_es.md` §5.1, as registered in PROSPERO, still state Cochrane CENTRAL n = 9 and total n = 60. Whether this needs a formal PROSPERO amendment or can simply be documented as a discrepancy in the manuscript's PRISMA methods section is your call — flagging it here so it doesn't get lost. See `PROGRESS.md`.

## Full search strings

### PubMed/MEDLINE

```
("AO Spine classification"[tiab] OR "AOSpine classification"[tiab] OR "subaxial cervical classification"[tiab]
 OR "thoracolumbar injury classification"[tiab] OR "COSF"[tiab] OR "Subaxial Injury Classification"[tiab]
 OR "SLIC"[tiab] OR "TLICS"[tiab])
AND
("spinal trauma"[tiab] OR "spinal injury"[tiab] OR "vertebral fracture"[tiab] OR "cervical spine injury"[tiab]
 OR "thoracolumbar fracture"[tiab])
AND
("neurological recovery"[tiab] OR "ASIA score"[tiab] OR "complications"[tiab] OR "reoperation"[tiab]
 OR "patient-reported outcomes"[tiab] OR "surgical outcomes"[tiab])
```

### Cochrane CENTRAL

```
("AO Spine classification" OR "AOSpine classification" OR "subaxial cervical classification"
 OR "thoracolumbar injury classification" OR "COSF" OR "SLIC" OR "TLICS")
AND
("spinal trauma" OR "spinal injury" OR "vertebral fracture" OR "cervical spine injury" OR "thoracolumbar fracture")
AND
("neurological recovery" OR "ASIA score" OR "complications" OR "reoperation" OR "patient-reported outcomes")
```

### LILACS

```
("AO Spine" OR "clasificacion AO" OR "TLICS" OR "SLIC")
AND
("fractura vertebral" OR "trauma raquimedular" OR "spinal injury")
AND
("recuperacion neurologica" OR "complicaciones" OR "reoperacion")
```
