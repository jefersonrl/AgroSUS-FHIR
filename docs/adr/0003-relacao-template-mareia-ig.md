# ADR-0003 — Adoção da disciplina de camadas L1/L2/L3 e de documentação (ADR/PRD)

- **Status:** Aceito (2026-07-21)
- **Decisores:** Jeferson Roberto (PO) + Claude

## Contexto

A Plataforma mareIA publica cada linha de cuidado (pathway) como um IG FHIR independente, seguindo
a metodologia WHO SMART Guidelines em camadas de conhecimento (L1 — narrativa/fonte-verdade
clínica; L2 — DAK estruturado; L3 — artefatos FHIR máquina-legíveis).

O AgroSUS-FHIR já existia antes desta decisão, com sua própria estrutura de perfis, terminologia,
questionário e exemplos (ver `AgroSUS-FHIR-Analise-Tecnica.md` para o inventário completo),
construída sobre o template `smart-ig-empty` da OMS e sobre o BR Core.

## Decisão

Adotar no AgroSUS-FHIR uma disciplina explícita de camadas e de documentação, sem descartar o que
já está construído:

- **Camadas L1/L2/L3**: `sources/` (fonte-verdade clínica: NR-7, NR-31, Nota Informativa 16/2019),
  `l2/` (DAK estruturado em CSV) e `input/fsh/` (artefatos FHIR).
- **Governança de decisões**: `docs/adr/` (uma decisão por arquivo), `docs/prd/`,
  `docs/cookbooks/` e `docs/hard-earned-lessons.md`.
- **Lógica de decisão como Library + PlanDefinition + Measure**, preenchendo a Seção 16 que havia
  sido adiada (ver ADR-0001 e ADR-0002).
- **Perfis e estrutura de páginas existentes são preservados**: os 19 perfis, terminologias,
  questionário de anamnese, exemplos e o CapabilityStatement já construídos sobre o BR Core
  continuam sendo a base do L3. A reestruturação de páginas do IG (menu no padrão `l2-1` a `l2-9`)
  foi adotada como organização do componente L2.

## Consequências

- (+) Ganha-se rastreabilidade e disciplina (ADR, fontes L1 citadas) sem descartar o trabalho de
  modelagem clínica já avançado do AgroSUS.
- (+) Documentação e decisões clínicas ficam auditáveis e versionadas junto ao código.
- (−) A estrutura de páginas do IG (`sushi-config.yaml` → `pages`/`menu`) foi reorganizada em torno
  dos 9 componentes numerados do DAK; páginas antigas do template WHO que não mapeiam para esse
  esquema permanecem no repositório, mas fora do menu publicado.
