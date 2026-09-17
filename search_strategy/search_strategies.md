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

## Record-count reconciliation (resolved 2026-09-17, confirmed by PI)

The "37 records" figure in the original project summary was a transcription error. The correct breakdown, per PI confirmation:

- PubMed/MEDLINE (35) + LILACS (16) = 51 records combined and imported into Rayyan.
- **47 records** currently in Rayyan for title/abstract screening (after deduplication within these two sources).
- **9 Cochrane CENTRAL records** could not be imported into Rayyan (format incompatibility) and are tracked separately for manual screening — see `screening/README.md`.
- 47 (Rayyan) + 9 (manual) = 56 of the 60 identified records are accounted for in some screening workflow; the remaining 4 correspond to duplicates removed during the PubMed+LILACS merge.

This is the figure to use for the PRISMA 2020 flow diagram (identification: n = 60; duplicates removed: n = 4; records screened: n = 56, split 47 in Rayyan + 9 manual).

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
