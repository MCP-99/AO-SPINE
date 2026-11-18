# Estado del proyecto

_Última actualización: 2026-11-18_

## ✅ Completado

- Propuesta y PICO definidos (bloqueado, ver `protocol/protocol_en.md` §3).
- Protocolo PROSPERO redactado y registrado, **inglés y español sincronizados** (`protocol/protocol_en.md`, `protocol/protocol_es.md`). Registro oficial: **CRD420261419101** (`protocol/PROSPERO_registration_CRD420261419101.pdf`), registrado 18/06/2026.
- Estrategia de búsqueda ejecutada en 3 bases de datos (PubMed/MEDLINE, Cochrane CENTRAL, LILACS).
- Importación a Rayyan: **37 registros** (PubMed + LILACS, deduplicados).
- **Screening de título/abstract CERRADO** (confirmado por el PI, 2026-10-21) — 15 artículos pasaron a texto completo, 32 excluidos.
- Lista de los 15 en formato Vancouver enviada a la biblioteca CEMIC (`screening/fulltext_request_list_vancouver.md`).
- Infraestructura del repositorio: formulario de extracción de datos, templates de riesgo de sesgo (NOS / RoB 2.0), script R de metaanálisis, planilla de elegibilidad a texto completo.
- **Borrador de manuscrito — Introducción y Métodos** — `manuscript/AO_Spine_manuscript_draft_intro_methods.docx`.

## Screening de texto completo — estado (15 artículos)

| ID | Autor | Decisión | Nota |
|---|---|---|---|
| RAY-03 | Shaharudin | Exclude | No diferencia resultado por tipo AO |
| RAY-04 | Leidinger | Exclude | No diferencia resultado por tipo AO |
| RAY-06 | Adegeest | **Include** | ⚠️ 2 temas abiertos, ver abajo |
| RAY-09 | Waterkeyn | Pendiente | Ignacio consigue el PDF |
| RAY-14 | Joaquim | Exclude | No diferencia resultado por tipo AO |
| RAY-20 | Li | Exclude | No diferencia resultado por tipo AO |
| RAY-25 | Donnarumma | **Include** | Extraído y verificado contra el PDF |
| RAY-26 | Tee | Pendiente | Ignacio consigue el PDF |
| RAY-29 | Bäcker | Exclude | No diferencia resultado por tipo AO |
| RAY-30 | Zou | **Include** | Extraído y verificado contra el PDF |
| RAY-37 | Fleiderman | Pendiente | **Prioridad** — único candidato a Tipo C toracolumbar completo |
| COCH-02 | ChiCTR2600128437 | **Exclude** (2026-11-18) | Confirmado por el PI — registro de ensayo sin publicación de resultados |
| COCH-03 | El Hewala | Pendiente | Versión completa 2019 localizada, acceso abierto — ver nota abajo |
| COCH-04 | Pandey | Pendiente | Ignacio consigue el PDF |
| COCH-10 | Jaiswal | Exclude | No diferencia resultado por tipo AO |

**Resumen: 3 Include, 7 Exclude, 5 pendientes** (Waterkeyn, Tee, Fleiderman, El Hewala, Pandey — **Ignacio los está consiguiendo directamente**, no hace falta que yo siga buscando acceso abierto).

### Nota — El Hewala (COCH-03)

El abstract de congreso que teníamos (Global Spine J. 2017;7(2 Suppl):53S) es la versión preliminar. Hay una versión completa, de acceso abierto:

> ElHewala T, ElAdawy A. Could Intermediate Screw in Thoracolumbar Fracture Fixation Save Motion Levels? Egyptian Spine Journal. 2019;30(1):2-11. doi:10.21608/ESJ.2019.10129.1092 — DOAJ, n=50 (25+25), 2009-2014.

Por la regla de datos duplicados del protocolo (§4.2: usar la publicación con mayor n/seguimiento), usar esta versión en vez del abstract de 2017.

## Extracción de datos — 3 Include, verificada contra los PDFs completos

`data_extraction/data_extraction_form.csv` (PDFs en `screening/fulltext_pdfs/`):

- **Adegeest** (Table 4 y 6 del PDF): complicaciones a 30 días por tipo AO — A 40/121 (33.1%), B 34/97 (35.1%), C 55/103 (53.4%), p=0.009. OR ajustado (Tipo C vs. A+B) 2.13 (IC95% 1.11-4.14) p=0.024. **⚠️ 2 temas abiertos — ver "Decisiones pendientes" abajo.**
- **Donnarumma**: 10/22 (45%) con mejoría neurológica a 1 año. El propio artículo tiene una inconsistencia interna (el desglose "2 grados en 4 + 1 grado en 4" solo suma 8, no 10) — no es error nuestro, no resoluble (PROSPERO prohíbe contactar autores). Usamos la cifra principal (10/22).
- **Zou**: de los 28 pacientes con déficit basal, los 28 mejoraron ≥1 grado (100%, nadie empeoró) — reconstruido y confirmado con Table 2 del PDF.

**Riesgo de sesgo (NOS), borrador:**
- Zou: 8/9 (riesgo bajo-moderado).
- Donnarumma: 5/9 (riesgo alto — serie de un solo brazo, sin comparador).
- Adegeest: sin puntuar, pendiente de resolver los temas abiertos.

**Pendiente para los 3:** segundo evaluador/extractor independiente (protocolo §6.2 y §7 piden 2 personas con reconciliación).

## ⚠️ Decisiones pendientes del PI

1. **Adegeest mezcla cervical y toracolumbar** — la cohorte (n=394: 241 cervical + 91 torácico + 62 lumbar) no desglosa las complicaciones por tipo AO (Table 4) por región, y no se puede confirmar si "cervical" excluye C0-C2. Opciones: buscar tabla suplementaria, usar solo en análisis de sensibilidad combinado, o excluir.
2. **Adegeest mide complicaciones a 30 días**, y el protocolo exige seguimiento mínimo de 3 meses (§4.1). ¿Ese criterio aplica solo al outcome primario (recuperación neurológica), o también excluye este outcome secundario?
3. **Timeline de PROSPERO**: fecha de fin registrada **11 de diciembre de 2026** (~3 semanas desde hoy), con 5 textos completos, extracción, riesgo de sesgo, síntesis y manuscrito todavía pendientes. ¿Acelerar o enmendar el registro en PROSPERO?
4. **Protocolo EN vs. ES**: ambos siguen diciendo Cochrane CENTRAL n=9 y total n=60 (el real es n=10/61, ver `search_strategy/search_strategies.md`). ¿Enmienda formal en PROSPERO o alcanza con documentarlo en el manuscrito?

## ¿Cuándo arrancar el escrito del manuscrito?

**Ya se puede avanzar:** Introducción y Métodos (ya redactados, ver `manuscript/AO_Spine_manuscript_draft_intro_methods.docx`).

**Todavía NO conviene escribir Resultados ni Discusión** — solo 3 de 15 estudios están extraídos, y el Fleiderman (pendiente, prioridad) es el único candidato a brazo Tipo C **toracolumbar** completo; podría cambiar bastante el cuerpo de evidencia.

## ⬜ Pendiente

1. Conseguir texto completo de los 5 restantes (Ignacio, directamente).
2. Cerrar el screening de texto completo de esos 5.
3. Extracción de datos + NOS/RoB2 de lo que se confirme — con segundo evaluador independiente.
4. Análisis estadístico (`analysis/meta_analysis_template.R`, revisado pero no corrido con datos reales).
5. Resultados, Discusión, Conclusión del manuscrito.
6. Sometimiento a Global Spine Journal.

## Próximo paso inmediato

1. Ignacio consigue los 5 PDFs restantes.
2. Mientras tanto, decidir los 4 puntos de arriba (región de Adegeest, ventana de seguimiento, timeline PROSPERO, enmienda EN/ES).
3. Conseguir un segundo evaluador (Matías u otro) para el NOS y la extracción de los 3 ya cargados.
