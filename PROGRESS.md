# Estado del proyecto

_Última actualización: 2026-09-17_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan (47 registros: PubMed + LILACS, deduplicados) y aislamiento de los 9 registros de Cochrane CENTRAL para screening manual.
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), y script R de metaanálisis (`analysis/meta_analysis_template.R`), listos para usar en cuanto avance el screening.

## ⬜ En curso

- **Screening de título/abstract en Rayyan** — los tres revisores deben evaluar los 47 registros de forma independiente (Include/Exclude/Maybe). Ver `screening/README.md`.
- Los 9 registros de Cochrane CENTRAL requieren screening manual — usar `screening/screening_tracking_template.csv`.

## ✅ Bloqueadores resueltos

1. **Protocolo EN vs. ES desincronizado** → resuelto. El español fue reescrito (markdown + `.docx`) para reflejar el mismo estado que el inglés: registrado en PROSPERO, agosto 2026, búsqueda completa en las 3 bases. Ver `protocol/README.md`.
2. **Discrepancia numérica en el conteo de registros** → resuelto (confirmado por el PI). Eran 47 registros en Rayyan (PubMed + LILACS deduplicados), no 37; los 9 de Cochrane CENTRAL se cuentan aparte porque no se pudieron importar. Ver `search_strategy/search_strategies.md`.

## ⚠️ Pendiente del PI

- **Diagrama PRISMA 2020**: el resumen original indica que ya fue creado, pero no se subió a este repo. Con los números ya reconciliados (60 identificados → 4 duplicados → 56 screened: 47 en Rayyan + 9 manual), se puede regenerar o subir el existente a `screening/`.

## ⬜ Pendiente

1. Screening texto completo (artículos que pasen el primer filtro) — `screening/`.
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R`.
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

Terminar el screening de título/abstract: 47 registros en Rayyan (los tres revisores, de forma independiente) + 9 registros de Cochrane CENTRAL en paralelo usando `screening/screening_tracking_template.csv`. Resolver los desacuerdos por consenso o tercer revisor.
