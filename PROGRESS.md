# Estado del proyecto

_Última actualización: 2026-10-21_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan: **37 registros** (PubMed + LILACS, deduplicados).
- **Screening de título/abstract CERRADO** (confirmado por el PI, 2026-10-21) — `screening/Screening_AO_Spine_consensus.xlsx`, consolidado en `screening/rayyan_37_consensus_final.csv` y `screening/screening_tracking_template.csv`.
  - Resultado final: **15 artículos pasan a texto completo** (11 Rayyan + 4 Cochrane), **32 excluidos** (26 Rayyan + 6 Cochrane).
  - Se revisaron y confirmaron explícitamente los 11 ítems marcados como dudosos en la ronda anterior (7 exclusiones "no AO" que en realidad usan TLICS/SLIC, RAY-35, RAY-05 pediátrico, y las inclusiones COCH-02/03/04) — el PI decidió mantener la decisión original del equipo en todos los casos, salvo RAY-05 (pediátrico) que quedó cerrado como Exclude.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), script R de metaanálisis, y planilla de elegibilidad a texto completo — listos para la siguiente etapa.

## Artículos que pasan a texto completo (15)

**Rayyan (11):** RAY-03, RAY-04, RAY-06, RAY-09, RAY-14, RAY-20, RAY-25, RAY-26, RAY-29, RAY-30, RAY-37
**Cochrane (4):** COCH-02, COCH-03, COCH-04, COCH-10

Ver títulos completos en `screening/rayyan_37_consensus_final.csv` y `screening/screening_tracking_template.csv`.

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto, el "37" original era correcto.
3. **Conteo de Cochrane CENTRAL: 9 vs. 10** → resuelto (son 10).
4. **Números finales de identificación/screening**: 61 identificados, 14 duplicados, 37 en Rayyan, 47 para screening en total.
5. **Screening de título/abstract** → cerrado y confirmado por el PI (ver arriba).

## ⚠️ Pendiente del PI

- `protocol/protocol_en.md` y `protocol/protocol_es.md` §5.1, tal como quedaron registrados en PROSPERO, todavía dicen Cochrane CENTRAL n=9 y total n=60. Decidir si amerita una enmienda formal en PROSPERO o alcanza con documentar la discrepancia en el manuscrito.

## ⬜ Pendiente

1. **Screening de texto completo de los 15 artículos** — usar `screening/fulltext_eligibility_template.csv` (una columna por criterio de inclusión del protocolo §4.1, categorías de exclusión para el PRISMA).
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R` (revisado y corregido, pendiente de probar con datos reales).
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

Conseguir el texto completo de los 15 artículos (11 Rayyan + 4 Cochrane) y evaluarlos contra los 7 criterios de elegibilidad del protocolo usando `screening/fulltext_eligibility_template.csv`, documentando el motivo de exclusión de cada uno que no pase este filtro.
