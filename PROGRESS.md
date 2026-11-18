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
- **Extracción de datos — borrador de los 3 Include confirmados** (2026-11-18) — `data_extraction/data_extraction_form.csv`: Adegeest (3 filas, una por subgrupo A/B/C), Donnarumma (Tipo C, n=22), Zou (Tipo A3, n=43). Es un borrador a partir del resumen de Ignacio, no de los PDFs — varios campos de events/total quedaron en blanco con nota explicando qué dato exacto falta (ver abajo). Falta extracción NOS/RoB2 y segundo extractor.
- **Extracción de datos — VERIFICADA contra los 3 PDFs completos** (2026-11-18) — `screening/fulltext_pdfs/` tiene los 3 PDFs guardados. Números exactos confirmados:
  - **Adegeest** (Table 4 y Table 6 del PDF): complicaciones a 30 días por tipo AO — A 40/121 (33.1%), B 34/97 (35.1%), C 55/103 (53.4%), p=0.009. OR ajustado (Tipo C vs. A+B combinados) 2.13 (IC95% 1.11-4.14) p=0.024. **⚠️ Ver bloqueador nuevo abajo — cohorte mezcla cervical y toracolumbar.**
  - **Donnarumma**: confirmado 10/22 (45%) con mejoría neurológica a 1 año. El propio artículo tiene una inconsistencia interna (el desglose "2 grados en 4 + 1 grado en 4" solo suma 8, no 10) — no es error nuestro, y no se puede resolver contactando autores (PROSPERO lo prohíbe explícitamente). Usamos la cifra principal (10/22).
  - **Zou**: reconstruido con Table 2 del PDF — de los 28 pacientes con déficit basal (5 Grado C + 23 Grado D, ambos grupos combinados), los 28 mejoraron ≥1 grado (100%, nadie empeoró) — confirma exactamente lo que habías leído.
- Falta todavía: extracción NOS/RoB2 y segundo extractor independiente para estos 3 (protocolo exige 2 extractores con reconciliación).
- **Borrador de manuscrito — Introducción y Métodos** (2026-11-18) — `manuscript/AO_Spine_manuscript_draft_intro_methods.docx`. Actualizado con el número de registro real de PROSPERO. Falta: Abstract, Resultados, Discusión, Conclusión y lista de referencias definitiva.
- **PDF oficial de registro PROSPERO recibido y cargado** (2026-11-18) — `protocol/PROSPERO_registration_CRD420261419101.pdf`. Registro: **CRD420261419101**, registrado 18/06/2026 (primer envío 11/06/2026).

## 🚨 3 hallazgos importantes del PDF de PROSPERO (2026-11-18)

1. **URGENTE — plazo del review:** la fecha de fin registrada en PROSPERO es **11 de diciembre de 2026**. Hoy (18/11/2026) quedan ~3 semanas y todavía faltan: 6 textos completos, extracción de datos completa, riesgo de sesgo, síntesis estadística y el manuscrito entero. Con este ritmo no se llega. Opciones: acelerar fuerte, o enmendar el timeline en PROSPERO (se puede actualizar el registro, PROSPERO lo permite y queda versionado) — decisión del PI.
2. **Criterio de exclusión faltante:** el registro oficial excluye explícitamente **"fracturas patológicas u osteoporóticas"**, un criterio que no estaba en `protocol/protocol_en.md` ni `protocol_es.md` ni en la planilla de elegibilidad a texto completo. Ya lo agregué a los 3 lugares (`protocol/protocol_en.md`, `protocol_es.md` §4.2, `screening/fulltext_eligibility_guide.md` y columna nueva `crit_traumatic_ok` en `fulltext_eligibility_template.csv`). Los 3 Include ya confirmados (Adegeest, Donnarumma, Zou) parecen estar bien (todos describen mecanismo traumático), pero falta la confirmación explícita al tener el texto completo.
3. **Desviación de protocolo a documentar:** PROSPERO lista EMBASE entre las fuentes planificadas de búsqueda, pero nunca se buscó ahí (falta de acceso institucional, como ya sabíamos). Esto hay que declararlo explícitamente como desviación del protocolo registrado en la sección de Métodos/Discusión del manuscrito (ya lo agregué al borrador) — es una práctica estándar y esperable en PRISMA, no hay que ocultarlo.

## ⚠️ Nuevo bloqueador: Adegeest mezcla cervical y toracolumbar

Leyendo el PDF completo del Adegeest encontré que la cohorte (n=394) es trauma espinal general de 2 centros holandeses: 241 cervicales + 91 torácicos + 62 lumbares, **sin separar el desglose de complicaciones por tipo AO (Table 4) por región**. Esto choca con el diseño del review, que analiza cervical subaxial y toracolumbar por separado.

Dos problemas concretos:
1. No hay forma de saber, con lo que está en el texto principal, si los 40/121 (Tipo A), 34/97 (Tipo B), 55/103 (Tipo C) con complicaciones son todos cervicales, todos toracolumbares, o una mezcla — no se puede asignar esta fila a un solo "spinal_region" en la extracción.
2. Tampoco se puede confirmar si "Cervical" en este estudio excluye los niveles C0-C2 (cervical superior) — uno de los criterios de exclusión del protocolo.

**No lo excluí ni lo recategoricé por mi cuenta** — lo dejé marcado como `mixed_cervical_thoracolumbar` en `data_extraction_form.csv` con nota explicando el problema. Opciones para decidir:
- Revisar si el PDF tiene una tabla suplementaria (no incluida en lo que subiste) que desglose por región.
- Si no la hay, usarlo solo en un análisis de sensibilidad "todas las regiones combinadas", separado del análisis principal por región.
- Excluirlo si se considera que no cumple el criterio de separación C0-C2/subaxial.

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

## ⚠️ Datos exactos pendientes de verificar en los 3 extraídos (tener el PDF a mano)

- **Adegeest (3 filas, A/B/C):** falta el n y el n-con-complicación exactos por subgrupo AO (tabla 4 del PDF) — por ahora solo cargados los porcentajes (33%/35%/53%) y el OR multivariado de tipo C.
- **Donnarumma (Tipo C, n=22):** falta el numerador exacto de "mejoró 45% al año" — el propio desglose Frankel final del artículo suma 8 de 10, no cierra, revisar con cuidado antes de cargarlo como evento/total.
- **Zou (Tipo A3, n=43):** falta el n exacto de pacientes con déficit basal (no-E) para poder cargar neuro_recovery_events/total (el 100% de mejoría es sobre ese subgrupo, no sobre los 43 totales).

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
6. Redacción del manuscrito — ver nota de timing abajo.
7. Sometimiento a Global Spine Journal.

## ¿Cuándo arrancar el escrito del manuscrito?

**Ya se puede empezar (no dependen del resultado final):**
- Introducción/Antecedentes — ya está básicamente redactada en `protocol/protocol_en.md` §1, solo adaptar al formato de manuscrito.
- Métodos — también ya redactados en el protocolo (§4 a §8), con el diagrama PRISMA (`screening/prisma_flow.html`) como figura 1.

**Todavía NO conviene escribir Resultados ni Discusión**, por dos motivos concretos:
1. Solo hay 3 estudios con extracción (parcial) hecha; los 6 de texto completo pendientes pueden cambiar bastante el cuerpo de evidencia — en particular el Fleiderman, que es el único candidato a brazo Tipo C **toracolumbar** completo (Donnarumma es Tipo C pero cervical).
2. Los 3 ya extraídos tienen números exactos pendientes de verificar (ver sección de arriba) — escribir Resultados con esos huecos obligaría a reescribir cuando se confirmen.

Recomendación: adelantar Introducción y Métodos ahora si quieren, y recién armar Resultados/Discusión cuando se resuelvan los 6 pendientes y se verifiquen los números exactos de los 3 ya incluidos.

## Próximo paso inmediato

1. Gestionar con la biblioteca CEMIC los 6 pendientes (prioridad: Fleiderman).
2. Para El Hewala, pedir específicamente la versión de 2019 en Egyptian Spine Journal (acceso abierto, no debería necesitar la biblioteca).
3. Empezar la extracción de datos de los 3 artículos ya confirmados como Include.
