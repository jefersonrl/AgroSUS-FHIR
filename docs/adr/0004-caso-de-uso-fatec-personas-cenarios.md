# ADR-0004 — Adoção do caso de uso do projeto (FATEC-SP/CPS) como fonte para personas e cenários de uso

## Contexto

A equipe do projeto produziu um documento de requisitos e um diagrama de caso de uso
(`sources/requisitos-caso-de-uso/Documento-Requisitos-Diagrama-Caso-de-Uso.pdf` e
`agrosus_use_case.svg`) com atores nomeados (Produtor Rural, Agente Comunitário Familiar — ACF,
Médico, Unidade Básica de Saúde, API Externa) e casos de uso (Gerenciar Processo Produtivo,
Manter/Visualizar Produtor Rural, Realizar Triagem, Classificar Risco, Gerenciar Biomarcadores,
Solicitar Exames, Monitorar Acompanhamento), além de tabelas de requisitos funcionais,
não-funcionais e regras de negócio.

Esse material é mais específico e concreto do que a narrativa genérica usada originalmente em
`l2-personas.md` e `l2-user-scenarios.md`, e cobre praticamente as mesmas personas e fluxos já
modelados nos perfis FHIR deste IG — com duas diferenças a reconciliar:

1. **Nomenclatura do agente de campo**: o documento usa "Agente Comunitário Familiar (ACF)",
   enquanto os perfis FHIR já existentes usam "Agente Comunitário de Saúde (ACS)"
   (`AgroSUSACS`, `AgroSUSACSRole`). Tratamos como o mesmo papel.
2. **Classificação de risco por API externa de IA**: o caso de uso "Classificar Risco" descreve um
   agente externo de Inteligência Artificial que classifica automaticamente o nível de risco a
   partir das respostas da triagem. Isso é distinto da lógica de suporte à decisão já implementada
   neste IG (`Library/AgroSUSIntoxicacaoLogic`, `PlanDefinition/AgroSUSEstratificacaoRisco`), que
   modela apenas gatilhos discretos e independentes mais o indicador objetivo de colinesterase —
   deliberadamente, por não haver um escore composto de risco validado em NR-7/NR-31
   (`docs/adr/0002-escore-risco-nao-definido.md`).

## Decisão

- Adotar o documento de requisitos/caso de uso como fonte para os componentes 2 (personas) e 3
  (cenários de uso) do DAK, documentando a equivalência ACS = ACF.
- **Manter a lógica de decisão rule-based atual** (`Library/AgroSUSIntoxicacaoLogic`,
  `PlanDefinition/AgroSUSEstratificacaoRisco`) como a lógica de suporte à decisão deste IG:
  indicador objetivo de colinesterase + gatilhos discretos e independentes, fundamentados em
  NR-7/NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS.
- A "API Externa" de classificação de risco por IA, descrita no caso de uso do projeto, **fica
  fora de escopo deste IG por enquanto** — não será modelada como artefato FHIR (nenhum
  `Device`/`Endpoint`/`Task` novo, nenhuma substituição da `Library`/`PlanDefinition` atual) nesta
  fase. Permanece citada em `l2-personas.md` e `l2-user-scenarios.md` apenas como referência ao
  documento de requisitos original do projeto, marcada como *fora de escopo*.
- Decisão confirmada pela equipe: caso a integração com a API de IA venha a ser retomada no
  futuro, isso exigirá uma nova ADR própria (não uma reabertura desta), já que mudaria a base da
  ADR-0002 (nenhum escore/classificador sem fonte L1 validada).

## Consequências

- (+) Personas e cenários passam a refletir um documento de requisitos real e específico do
  projeto, em vez de uma narrativa genérica.
- (+) A lógica de decisão permanece auditável e rastreável a uma fonte L1 citada (regra de ouro
  deste repositório, ver `CLAUDE.md`), sem introduzir um classificador de IA sem validação clínica.
- (+) Escopo desta fase do IG fica delimitado com clareza: a API externa de IA não é um artefato
  pendente de implementação, é uma capacidade explicitamente fora de escopo.
- (−) O caso de uso original do projeto descreve uma capacidade (classificação automática por IA)
  que este IG não implementa; isso deve ficar visível a quem consultar `sources/requisitos-caso-de-uso/`
  para não presumir paridade total entre o documento de requisitos e o IG publicado.
- Se a integração for retomada no futuro: nova ADR própria, não reabertura desta.

## Status

`aceito` (2026-07-21) — manter lógica rule-based atual; classificação de risco por IA via API
externa tratada como fora de escopo desta fase do IG.
