# Search strategy

Source: `protocol/protocol_en.md` §5 (executed search, as registered in PROSPERO).

## Databases searched

| Database | Search date | Period covered | Results |
|---|---|---|---|
| PubMed/MEDLINE | 2026-08-12 | 2011 – present | 35 |
| Cochrane CENTRAL | 2026-08-12 | 2016 – present | 9 |
| LILACS (BVS) | 2026-08-12 | 2016 – present | 16 |
| **Total identified** | | | **60** |

**Known limitations:**
- EMBASE and Scopus excluded — no institutional access at CEMIC.
- The 9 Cochrane CENTRAL records could not be imported into Rayyan due to a format incompatibility; these must be screened manually outside Rayyan (see `screening/README.md`).

## ⚠️ Record-count reconciliation needed

`Resumen_Proyecto_AOSpine.md` states 2 duplicates were removed and 37 records are ready for screening, but 60 − 2 = 58, not 37. Possible explanations to confirm with the PI:
1. The 9 Cochrane records (not importable into Rayyan) are being tracked separately and are not part of the "37 in Rayyan" count, plus additional exclusions were applied before screening.
2. A transcription error in one of the counts (dedup count, or the 37).

This should be resolved before finalizing the PRISMA 2020 flow diagram — see `screening/README.md`.

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
