# Estado del proyecto

_Última actualización: 2026-09-18_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan: **37 registros** (PubMed + LILACS, deduplicados — verificado contra el export real de Rayyan, `screening/rayyan_export/`).
- **Screening manual de título/abstract de Cochrane CENTRAL (1er revisor)** — 8 excluidos, 2 a revisar a texto completo. Ver `screening/screening_tracking_template.csv`. Falta 2° revisor independiente por protocolo.
- **Borrador de screening (asistido por Claude) de los 37 registros de Rayyan** — `screening/rayyan_37_ai_draft_screening.csv`: 6 Include, 17 Exclude, 14 Maybe, con motivo por registro. Es un apoyo para acelerar, no reemplaza a los 2 revisores independientes del protocolo — ver nota de uso en `screening/README.md`.
- Diagrama PRISMA 2020 recibido y actualizado con los números finales — `screening/prisma_flow.html`.
- `Screening_AO_Spine.xlsx` enviado a los co-investigadores: los 37 de Rayyan (título+resumen) y los 10 de Cochrane (con autores, fuente y link directo a Cochrane Library), sin decisiones precargadas.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), y script R de metaanálisis (`analysis/meta_analysis_template.R`), listos para usar en cuanto avance el screening.
- **Corregido un bug real en el script de R** (2026-09-18): usaba `metabin`/`metacont` con el brazo comparador vacío (`NA`), lo que no habría corrido. Reescrito con `metaprop`/`metamean` (proporciones/medias de un solo brazo por subgrupo AO, comparadas entre subgrupos vía `subgroup=`), acorde al diseño real de `data_extraction_form.csv` (una fila por estudio × subgrupo AO). No pude ejecutar el script en este entorno (no hay R instalable acá), así que quedó revisado a mano pero no corrido — probarlo con datos reales o de prueba antes de confiar en el output.
- **Planilla de elegibilidad a texto completo** (`screening/fulltext_eligibility_template.csv` + `fulltext_eligibility_guide.md`) — lista para la etapa 2 del screening (protocolo §6.1), con una columna por criterio de inclusión y categorías de exclusión para alimentar el diagrama PRISMA.

## ⬜ En curso

- **Screening de título/abstract en Rayyan** — los tres revisores deben evaluar los 37 registros de forma independiente (Include/Exclude/Maybe), **sin ver el borrador de Claude antes de su propia lectura** (para no perder independencia/masking). Ver `screening/README.md`.
- **2° revisor independiente para los 10 registros de Cochrane CENTRAL** — usar `screening/screening_tracking_template.csv`.

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto. El español fue reescrito (markdown + `.docx`) para reflejar el mismo estado que el inglés: registrado en PROSPERO, agosto 2026, búsqueda completa en las 3 bases. Ver `protocol/README.md`.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto y **el "37" original era correcto**: es el conteo real en Rayyan (verificado directamente contra `articles.ris`), no un error de transcripción como se pensó al principio.
3. **Conteo de Cochrane CENTRAL: 9 vs. 10** → resuelto (confirmado por el PI): son **10**, no 9.
4. **Números finales de identificación/screening** (verificados contra el export real de Rayyan, no solo declarados): 61 identificados (35 PubMed + 10 Cochrane + 16 LILACS), **14 duplicados** eliminados en el pool PubMed+LILACS (no 2, no 4 — corregido dos veces sobre la marcha), **37 en Rayyan**, **47 para screening en total** (37 Rayyan + 10 Cochrane manual). Actualizado en `search_strategy/search_strategies.md`, `screening/README.md` y `screening/prisma_flow.html`.

## ⚠️ Pendiente del PI

- `protocol/protocol_en.md` y `protocol/protocol_es.md` §5.1, tal como quedaron registrados en PROSPERO, todavía dicen Cochrane CENTRAL n=9 y total n=60. Decidir si esto amerita una enmienda formal en PROSPERO o si alcanza con documentar la discrepancia en la sección de métodos/PRISMA del manuscrito (es una corrección menor de conteo, no de elegibilidad ni de PICO). No toqué los `.docx`/`.md` del protocolo registrado hasta que decidas esto.

## ⬜ Pendiente

1. Screening texto completo (artículos que pasen el primer filtro) — `screening/fulltext_eligibility_template.csv`.
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R`.
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Screening de título/abstract de los **37 registros en Rayyan** por los tres revisores, de forma independiente (usar el borrador de Claude solo después, como chequeo o para destrabar desacuerdos).
2. En paralelo, 2° revisor independiente para los **10 registros de Cochrane CENTRAL** (`screening/screening_tracking_template.csv`), y resolver por consenso o tercer revisor si hay desacuerdo con la 1ª pasada ya cargada.
3. Decidir el punto de "Pendiente del PI" sobre la enmienda del protocolo registrado.
