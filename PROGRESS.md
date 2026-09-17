# Estado del proyecto

_Última actualización: 2026-09-17_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan (47 registros: PubMed + LILACS, deduplicados).
- **Screening manual de título/abstract de Cochrane CENTRAL (1er revisor)** — 8 excluidos, 2 a revisar a texto completo. Ver `screening/screening_tracking_template.csv`. Falta 2° revisor independiente por protocolo.
- Diagrama PRISMA 2020 recibido y actualizado con los números reconciliados — `screening/prisma_flow.html`.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), y script R de metaanálisis (`analysis/meta_analysis_template.R`), listos para usar en cuanto avance el screening.

## ⬜ En curso

- **Screening de título/abstract en Rayyan** — los tres revisores deben evaluar los 47 registros de forma independiente (Include/Exclude/Maybe). Ver `screening/README.md`.
- **2° revisor independiente para los 9–10 registros de Cochrane CENTRAL** (ver bloqueador de conteo abajo) — usar `screening/screening_tracking_template.csv`.

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto. El español fue reescrito (markdown + `.docx`) para reflejar el mismo estado que el inglés: registrado en PROSPERO, agosto 2026, búsqueda completa en las 3 bases. Ver `protocol/README.md`.
2. **Discrepancia numérica en el conteo de registros (60 vs. 37)** → resuelto (confirmado por el PI). Eran 47 registros en Rayyan (PubMed + LILACS deduplicados), no 37; los 9 de Cochrane CENTRAL se cuentan aparte porque no se pudieron importar. Ver `search_strategy/search_strategies.md`.

## ⚠️ Bloqueador nuevo — pendiente del PI

3. **Conteo de Cochrane CENTRAL: 9 vs. 10.** El screening manual produjo 10 títulos (8 excluir + 2 a texto completo), pero la búsqueda original registra n=9 para esta base y el mensaje de conclusión decía "9 de Cochrane" (7+2). Confirmar cuál de los 10 títulos en `screening/screening_tracking_template.csv` (filas `COCH-01` a `COCH-10`) no corresponde, o si el conteo original de n=9 estaba mal y en realidad son 10. Esto cambia el total identificado (60 vs. 61) y el diagrama PRISMA (`screening/prisma_flow.html`, marcado con `*` mientras tanto).

## ⬜ Pendiente

1. Screening texto completo (artículos que pasen el primer filtro) — `screening/`.
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R`.
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Confirmar el bloqueador #3 (9 vs. 10 registros de Cochrane) y ajustar `screening/prisma_flow.html` si corresponde.
2. Terminar el screening de título/abstract: 47 registros en Rayyan (los tres revisores, de forma independiente) + 2° revisor para Cochrane CENTRAL. Resolver los desacuerdos por consenso o tercer revisor.
