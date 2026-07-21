# PRD — AgroSUS (módulo do Projeto mareIA)

## Problema

Trabalhadores rurais expostos a defensivos agrícolas (agrotóxicos) não têm, hoje, um fluxo
digital estruturado de identificação precoce de intoxicação na Atenção Primária à Saúde: a
anamnese ocupacional/ambiental é feita de forma não padronizada pelo Agente Comunitário de Saúde
(ACS), o monitoramento biológico obrigatório (NR-7) tem baixa cobertura e rastreabilidade, e não
há registro estruturado que ligue exposição → sintomas → conduta clínica → acompanhamento.

## Solução

Um Implementation Guide HL7 FHIR R4 (`io.github.jefersonrl.agrosus`) que padroniza: o cadastro do
trabalhador e da propriedade rural; a aplicação de uma anamnese ocupacional/ambiental estruturada
pelo ACS (`Questionnaire agrosus-anamnese`); o atendimento clínico na UBS; a solicitação e o
resultado de exames laboratoriais (incluindo colinesterase); o registro da condição clínica de
intoxicação; um plano de acompanhamento longitudinal; e trilhas de auditoria/proveniência —
tudo sincronizável de forma atômica e offline-first via `Bundle` transacional
(`AgroSUSTransacaoVisita`).

## Escopo desta fase (v0.2)

1. Corrigir o build do IG (bug de YAML no `sushi-config.yaml` — resolvido).
2. Adotar a disciplina L1/L2/L3 e de ADRs do template `mareIA-ig` (ver ADR-0003).
3. Implementar a lógica de decisão da Seção 16 (antes adiada), fundamentada em NR-7/NR-31 e na
   Nota Informativa nº 16/2019-CGLAB/MS: classificação da colinesterase, periodicidade do exame
   biológico e gatilhos de alerta independentes — como `Library` + `PlanDefinition` (ver ADR-0001
   e ADR-0002 sobre os limites dessa fonte).
4. Adicionar indicadores de processo (`Measure`) ligados a essa mesma lógica: cobertura do exame
   basal, adesão à periodicidade semestral, tempo até a conduta pós-resultado alterado.
5. Preencher as páginas de decisão-suporte e indicadores do IG com o conteúdo real (hoje
   placeholders do template WHO).

## Fora de escopo (por enquanto)

- Um escore composto de risco ocupacional (não existe fonte validada — ver ADR-0002).
- Implementação da lógica em CQL executável (fase L4; por ora, `Library` é humano-legível, como no
  `mareIA-ig`).
- Reestruturação completa das páginas do IG para o padrão numerado `l2-1..9` (ver ADR-0003).

## Critérios de aceite

- `sushi .` compila com 0 erros.
- Todo artefato novo cita sua fonte L1 (NR-7/NR-31/Nota Informativa) em comentário `// Fonte L1`.
- Nenhum limiar ou peso é inventado sem fonte (auditável via ADR-0001/0002).
- As páginas `decision-logic.html` e `indicators.html` refletem o conteúdo real do AgroSUS, não
  mais o texto genérico `[insert health domain here]`.
