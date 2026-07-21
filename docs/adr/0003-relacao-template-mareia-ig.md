# ADR-0003 — Relação com o template `mareIA-ig` (ATENTO 60+)

- **Status:** Aceito (2026-07-21)
- **Decisores:** Jeferson Roberto (PO) + Claude

## Contexto

A Plataforma mareIA publica cada linha de cuidado (pathway) como um IG FHIR independente
(princípio adotado também pelo pathway ATENTO 60+, ver `mareIA-ig` ADR-0001: "Um IG por pathway").
O repositório `italomacedo/mareIA-ig` (ATENTO 60+ — telemonitoramento da pessoa idosa) já
implementa esse padrão e seu próprio README declara explicitamente que os demais cenários da
mareIA — CardioRemoto, FamilIAr_Ativa e **AgroSUS** — "serão repositórios próprios, reaproveitando
este como template".

O AgroSUS-FHIR já existia antes desta decisão, com sua própria estrutura de perfis, terminologia,
questionário e exemplos (ver `AgroSUS-FHIR-Analise-Tecnica.md` para o inventário completo),
construída sobre o template `smart-ig-empty` da OMS e sobre o BR Core, e não sobre o `mareIA-ig`.

## Decisão

Adotar no AgroSUS-FHIR a disciplina de camadas e de documentação do `mareIA-ig`, sem descartar o
que já está construído:

- **Camadas L1/L2/L3**: `sources/` (fonte-verdade clínica: NR-7, NR-31, Nota Informativa 16/2019),
  `l2/` (DAK estruturado em CSV) e `input/fsh/` (artefatos FHIR), como no template.
- **Governança de decisões**: `docs/adr/` (uma decisão por arquivo), `docs/prd/`,
  `docs/cookbooks/` e `docs/hard-earned-lessons.md`, seguindo os mesmos formatos.
- **Lógica de decisão como Library + PlanDefinition + Measure**, preenchendo a Seção 16 que havia
  sido adiada (ver ADR-0001 e ADR-0002).
- **Perfis e estrutura de páginas existentes são preservados**: os 19 perfis, terminologias,
  questionário de anamnese, exemplos e o CapabilityStatement já construídos sobre o BR Core
  continuam sendo a base do L3; não foram substituídos pelo padrão mais enxuto do ATENTO 60+
  (que cobre um escopo menor: só Patient/Observation/Questionnaire). A reestruturação de páginas
  do IG (menu no padrão `l2-1` a `l2-9`) fica como *próximo passo opcional*, não decidido aqui.

## Consequências

- (+) Ganha-se rastreabilidade e disciplina (ADR, fontes L1 citadas) sem descartar o trabalho de
  modelagem clínica já avançado do AgroSUS.
- (+) Compatibilidade de padrão com os demais pathways da mareIA, facilitando comparação e reuso.
- (−) A estrutura de páginas do IG (`sushi-config.yaml` → `pages`/`menu`) ainda mistura o padrão
  do template WHO `smart-ig-empty` (herdado) com o conteúdo novo estilo `mareIA-ig`; uma futura
  ADR pode propor migrar para os 9 componentes numerados do DAK se isso for desejado.
