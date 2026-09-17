# Estado del proyecto

_Última actualización: 2026-09-17_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan (47 registros: PubMed + LILACS, deduplicados).
- **Screening manual de título/abstract de Cochrane CENTRAL (1er revisor)** — 8 excluidos, 2 a revisar a texto completo. Ver `screening/screening_tracking_template.csv`. Falta 2° revisor independiente por protocolo.
- Diagrama PRISMA 2020 recibido y actualizado con los números finales — `screening/prisma_flow.html`.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), y script R de metaanálisis (`analysis/meta_analysis_template.R`), listos para usar en cuanto avance el screening.

## ⬜ En curso

- **Screening de título/abstract en Rayyan** — los tres revisores deben evaluar los 47 registros de forma independiente (Include/Exclude/Maybe). Ver `screening/README.md`.
- **2° revisor independiente para los 10 registros de Cochrane CENTRAL** — usar `screening/screening_tracking_template.csv`.

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto. El español fue reescrito (markdown + `.docx`) para reflejar el mismo estado que el inglés: registrado en PROSPERO, agosto 2026, búsqueda completa en las 3 bases. Ver `protocol/README.md`.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto (confirmado por el PI). Eran 47 registros en Rayyan (PubMed + LILACS deduplicados), no 37.
3. **Conteo de Cochrane CENTRAL: 9 vs. 10** → resuelto (confirmado por el PI, 2026-09-17): son **10**, no 9. Números finales: 61 identificados (35 + 10 + 16), 4 duplicados eliminados (dentro del pool PubMed+LILACS), 57 para screening (47 Rayyan + 10 manual). Actualizado en `search_strategy/search_strategies.md`, `screening/README.md` y `screening/prisma_flow.html`.

## ⚠️ Pendiente del PI

- `protocol/protocol_en.md` y `protocol/protocol_es.md` §5.1, tal como quedaron registrados en PROSPERO, todavía dicen Cochrane CENTRAL n=9 y total n=60. Decidir si esto amerita una enmienda formal en PROSPERO o si alcanza con documentar la discrepancia en la sección de métodos/PRISMA del manuscrito (es una corrección menor de conteo, no de elegibilidad ni de PICO). No toqué los `.docx`/`.md` del protocolo registrado hasta que decidas esto.

## ⬜ Pendiente

1. Screening texto completo (artículos que pasen el primer filtro) — `screening/`.
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R`.
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Screening de título/abstract de los **47 registros en Rayyan** por los tres revisores, de forma independiente.
2. En paralelo, 2° revisor independiente para los **10 registros de Cochrane CENTRAL** (`screening/screening_tracking_template.csv`), y resolver por consenso o tercer revisor si hay desacuerdo con la 1ª pasada ya cargada.
3. Decidir el punto de "Pendiente del PI" sobre la enmienda del protocolo registrado.
