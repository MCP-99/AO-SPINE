# Estado del proyecto

_Última actualización: 2026-11-18_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan: **37 registros** (PubMed + LILACS, deduplicados).
- **Screening de título/abstract CERRADO** (confirmado por el PI, 2026-10-21) — 15 artículos pasaron a texto completo, 32 excluidos.
- Lista de los 15 en formato Vancouver enviada a la biblioteca CEMIC (`screening/fulltext_request_list_vancouver.md`).
- **Screening de texto completo — 9 de 15 revisados por Ignacio** (2026-11-18) — `screening/Planilla_AO_9_articulos.xlsx`, consolidado en `screening/fulltext_eligibility_template.csv`:
  - **3 Include:** `RAY-06` (Adegeest — complicaciones por tipo AO), `RAY-25` (Donnarumma — Tipo C cervical, brazo único), `RAY-30` (Zou — Tipo A3, brazo único).
  - **6 Exclude:** `RAY-03` (Shaharudin), `RAY-04` (Leidinger), `RAY-14` (Joaquim), `RAY-20` (Li), `RAY-29` (Bäcker), `COCH-10` (Jaiswal) — todos porque no diferencian el outcome por tipo AO (o no tienen clasificación propia), aunque sí usan AO Spine.
  - **6 pendientes de texto completo** (sin acceso abierto): `RAY-09` (Waterkeyn, solo abstract), `RAY-26` (Tee), `RAY-37` (Fleiderman — **prioridad**, todo Tipo C toracolumbar), `COCH-03` (El Hewala), `COCH-04` (Pandey), `COCH-02` (ChiCTR2600128437).
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), script R de metaanálisis — listos para la siguiente etapa.

## 🔎 Hallazgo de búsqueda (2026-11-18): versión completa de El Hewala (COCH-03)

El abstract de congreso que teníamos (Global Spine J. 2017;7(2 Suppl):53S) es la versión preliminar. El estudio se publicó completo y es de **acceso abierto**:

> ElHewala T, ElAdawy A. Could Intermediate Screw in Thoracolumbar Fracture Fixation Save Motion Levels? Comparative Study between Long-Segment and Short-Segment with Intermediate Screw Fixation. Egyptian Spine Journal. 2019;30(1):2-11. doi:10.21608/ESJ.2019.10129.1092 — DOAJ, n=50 (25+25), 2009-2014.

Por la regla de datos duplicados del protocolo (§4.2: usar la publicación con mayor n/seguimiento), **usar esta versión en vez del abstract de 2017** para el screening de texto completo y la extracción de datos.

Para los otros 5 pendientes (Waterkeyn, Tee, Fleiderman, Pandey, ChiCTR2600128437) se buscó una versión de acceso abierto y no se encontró — quedan a la espera de la biblioteca CEMIC.

## Artículos que pasan a texto completo (15) — estado

| ID | Autor | Estado texto completo |
|---|---|---|
| RAY-03 | Shaharudin | Leído → Exclude |
| RAY-04 | Leidinger | Leído → Exclude |
| RAY-06 | Adegeest | Leído → **Include** |
| RAY-09 | Waterkeyn | Pendiente (solo abstract) |
| RAY-14 | Joaquim | Leído → Exclude |
| RAY-20 | Li | Leído → Exclude |
| RAY-25 | Donnarumma | Leído → **Include** |
| RAY-26 | Tee | Pendiente |
| RAY-29 | Bäcker | Leído → Exclude |
| RAY-30 | Zou | Leído → **Include** |
| RAY-37 | Fleiderman | Pendiente — **prioridad** |
| COCH-02 | ChiCTR2600128437 | Pendiente (registro de ensayo) |
| COCH-03 | El Hewala | Pendiente — versión completa localizada (ver arriba) |
| COCH-04 | Pandey | Pendiente |
| COCH-10 | Jaiswal | Leído → Exclude |

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto, el "37" original era correcto.
3. **Conteo de Cochrane CENTRAL: 9 vs. 10** → resuelto (son 10).
4. **Números finales de identificación/screening**: 61 identificados, 14 duplicados, 37 en Rayyan, 47 para screening en total.
5. **Screening de título/abstract** → cerrado y confirmado por el PI.

## ⚠️ Pendiente del PI

- `protocol/protocol_en.md` y `protocol/protocol_es.md` §5.1, tal como quedaron registrados en PROSPERO, todavía dicen Cochrane CENTRAL n=9 y total n=60. Decidir si amerita una enmienda formal en PROSPERO o alcanza con documentar la discrepancia en el manuscrito.

## ⬜ Pendiente

1. Conseguir texto completo de los 6 pendientes (biblioteca CEMIC; Fleiderman es prioridad).
2. Cerrar el screening de texto completo de esos 6.
3. Extracción de datos de los 3 Include confirmados (Adegeest, Donnarumma, Zou) + los que se confirmen de los 6 pendientes — `data_extraction/data_extraction_form.csv`.
4. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
5. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R` (revisado y corregido, pendiente de probar con datos reales).
6. Redacción del manuscrito.
7. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Gestionar con la biblioteca CEMIC los 6 pendientes (prioridad: Fleiderman).
2. Para El Hewala, pedir específicamente la versión de 2019 en Egyptian Spine Journal (acceso abierto, no debería necesitar la biblioteca).
3. Empezar la extracción de datos de los 3 artículos ya confirmados como Include.
