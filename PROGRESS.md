# Estado del proyecto

_Última actualización: 2026-09-17_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado (inglés — `protocol/protocol_en.md`).
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan y deduplicación (parcial — ver pendientes).
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), y script R de metaanálisis (`analysis/meta_analysis_template.R`), listos para usar en cuanto avance el screening.

## ⬜ En curso

- **Screening de título/abstract en Rayyan** — los tres revisores deben evaluar los registros de forma independiente (Include/Exclude/Maybe). Ver `screening/README.md`.
- Los 9 registros de Cochrane CENTRAL no importados a Rayyan requieren screening manual — usar `screening/screening_tracking_template.csv`.

## ⚠️ Bloqueadores / decisiones pendientes del PI

1. **Protocolo EN vs. ES desincronizado.** El ES es un borrador de junio 2025 (pre-registro, solo PubMed hecho); el EN es la versión de agosto 2026 ya registrada. Decidir si el ES debe actualizarse para reflejar el estado final. Ver `protocol/README.md`.
2. **Discrepancia numérica en el conteo de registros.** 60 identificados − 2 duplicados = 58, no 37 como indica el resumen del proyecto. Confirmar los números reales antes de construir el diagrama de flujo PRISMA 2020 definitivo. Ver `search_strategy/search_strategies.md`.
3. **Diagrama PRISMA 2020**: el resumen indica que ya fue creado, pero no se subió a este repo. Si existe, agregarlo en `screening/` (o donde corresponda) una vez reconciliados los números del punto 2.

## ⬜ Pendiente

1. Screening texto completo (artículos que pasen el primer filtro) — `screening/`.
2. Extracción de datos con el formulario estandarizado — `data_extraction/data_extraction_form.csv`.
3. Evaluación de riesgo de sesgo (NOS / RoB 2.0) — `risk_of_bias/`.
4. Análisis estadístico (R: `meta` + `metafor`, o RevMan 5.4) — `analysis/meta_analysis_template.R`.
5. Redacción del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

Terminar el screening de título/abstract en Rayyan (37 registros según el resumen del proyecto — número a confirmar, ver bloqueador #2) y resolver los desacuerdos por consenso o tercer revisor.
