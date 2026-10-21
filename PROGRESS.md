# Estado del proyecto

_Última actualización: 2026-10-21_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan: **37 registros** (PubMed + LILACS, deduplicados).
- **Screening de título/abstract completado por los 3 revisores, consenso cargado** (2026-10-21) — `screening/Screening_AO_Spine_consensus.xlsx`, consolidado en `screening/rayyan_37_consensus_final.csv` y `screening/screening_tracking_template.csv`. Resultado consenso: Rayyan 11 Include / 25 Exclude / 1 sin marcar; Cochrane 4 Include / 6 Exclude.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), script R de metaanálisis, y planilla de elegibilidad a texto completo — listos para la siguiente etapa.

## ⚠️ Pendiente de confirmar antes de cerrar el screening de título/abstract (2026-10-21)

Al cruzar el consenso contra el borrador propio y las evaluaciones previas, aparecieron items que conviene que el equipo revise antes de dar por cerrada esta etapa — podrían cambiar el número de artículos que pasan a texto completo:

1. **7 registros de Rayyan + 1 de Cochrane excluidos con motivo "no AO"/"no clasiffication", pero usan TLICS o SLIC** — ambas son clasificaciones AO Spine explícitamente aceptadas por el protocolo (§4.1: *"Clasificación explícita AO Spine (CSISS, SLIC, AO TL TLICS)"*). Afectados: `RAY-12` (TLICS predictivo de complicaciones — coincide con el objetivo primario), `RAY-13`, `RAY-15`, `RAY-16`, `RAY-17`, `RAY-19` (SLIC asociado a complicaciones, p=0.000 — objetivo secundario), `COCH-01` (título menciona TLICS explícitamente).
2. **`RAY-05` (CHILDSPINE, población pediátrica) quedó sin marcar** — falta una decisión explícita (es casi seguro Exclude, pero hay que cerrarlo para que los números de PRISMA cierren).
3. **`RAY-35` excluido sin motivo registrado** — reporta distribución explícita por tipo AO (34 A / 27 B / 4 C de 65 pacientes) y grados ASIA pre/post — parece un candidato fuerte.
4. **`COCH-02` incluido pero es solo un registro de ensayo** (ChiCTR2600128437, sin revista ni resultados publicados) — mismo tipo de registro que `COCH-08` (correctamente excluido) — confirmar si existe una publicación con resultados antes de incluirlo.
5. **`COCH-03` y `COCH-04` pasaron de Exclude a Include**, revirtiendo dos evaluaciones independientes previas (la mía y la del PI) que los habían marcado como comparaciones de técnica sin desglose por subgrupo AO — confirmar si el texto completo sí lo desglosa.

Ver el detalle completo con cita del protocolo en `screening/rayyan_37_consensus_final.csv` (columna `flag_review`) y las notas en `screening/screening_tracking_template.csv`.

## ⬜ En curso

- Confirmar los 11 ítems de arriba con el equipo de revisores.
- Una vez cerrado, actualizar el número final de "artículos a texto completo" en `screening/prisma_flow.html` (actualmente 15 = 11 Rayyan + 4 Cochrane, marcado como preliminar; podría subir a ~23 si se confirman las reclasificaciones).

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto, el "37" original era correcto.
3. **Conteo de Cochrane CENTRAL: 9 vs. 10** → resuelto (son 10).
4. **Números finales de identificación/screening** (verificados contra el export real de Rayyan): 61 identificados, 14 duplicados, 37 en Rayyan, 47 para screening en total.

## ⚠️ Pendiente del PI

- `protocol/protocol_en.md` y `protocol/protocol_es.md` §5.1, tal como quedaron registrados en PROSPERO, todavía dicen Cochrane CENTRAL n=9 y total n=60. Decidir si amerita una enmienda formal en PROSPERO o alcanza con documentar la discrepancia en el manuscrito.

## ⬜ Pendiente

1. Cerrar los 11 ítems marcados arriba.
2. Screening texto completo de los artículos que pasen el primer filtro — `screening/fulltext_eligibility_template.csv`.
3. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
4. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
5. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R` (revisado y corregido, pendiente de probar con datos reales).
6. Redacción del manuscrito.
7. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Confirmar con el equipo los 11 ítems marcados como pendientes (arriba).
2. Cerrar el número definitivo de "artículos a texto completo" y actualizar `prisma_flow.html`.
3. Arrancar el screening de texto completo de esos artículos con `screening/fulltext_eligibility_template.csv`.
