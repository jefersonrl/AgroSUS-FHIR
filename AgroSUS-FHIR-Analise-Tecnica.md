# Análise Técnica do Repositório AgroSUS-FHIR

**Data da análise:** 21/07/2026
**Tipo de projeto:** Implementation Guide (IG) HL7 FHIR R4, construído com FSH/SUSHI, seguindo o template WHO SMART Guidelines
**Escopo do domínio:** Telemonitoramento e apoio à identificação precoce de intoxicações por defensivos agrícolas em trabalhadores rurais, no contexto da Atenção Primária à Saúde (APS) do SUS — projeto "mareIA"

---

## 1. Visão geral da arquitetura

O repositório segue a estrutura padrão de um IG FHIR gerado com SUSHI (`sushi-config.yaml` + `input/fsh/*`), herdada do framework `smart-ig-empty` da OMS. As dependências declaradas em `sushi-config.yaml` combinam pacotes HL7 internacionais (terminology, extensions, IPS, CQL, CRMI, SDC, CPG, cqf-measures, SMART base) com pacotes brasileiros ainda não publicados publicamente (`br.gov.saude.br-core.fhir`, `br.gov.saude.terminologia.fhir`, `br.gov.saude.ips.fhir`), todos na versão `1.0.0`. Os perfis usam `BRCorePatient`, `BRCorePractitioner`, `BRCoreOrganization`, `BRCoreEncounter`, `BRCoreCondition`, `BRCoreObservation`, `BRCoreServiceRequest`, `BRCoreDiagnosticReport` e `BRCoreCarePlan` como pais — ou seja, o AgroSUS é modelado como uma extensão fina do BR Core, e não como perfis diretos de FHIR R4.

O modelo fhirVersion é 4.0.1. O IG usa o padrão de conhecimento em camadas do WHO SMART Guidelines (L2/L3), mas atualmente **só a camada L3 (artefatos técnicos FSH) está desenvolvida**; a camada L2 (conteúdo narrativo/DAK) permanece com o texto placeholder original do template.

---

## 2. O que já está implementado (por categoria)

### 2.1 Perfis (`input/fsh/profiles/`) — 19 perfis, todos completos

| Perfil | Pai (BR Core / base) | Papel no fluxo |
|---|---|---|
| AgroSUSPatient | BRCorePatient | Trabalhador rural acompanhado |
| AgroSUSACS | BRCorePractitioner | Agente Comunitário de Saúde |
| AgroSUSACSRole | BRCorePractitionerRole | Vínculo do ACS com a UBS |
| AgroSUSProfissionalUBS | BRCorePractitioner | Profissional assistencial (médico/enfermeiro/técnico) |
| AgroSUSProfissionalUBSRole | BRCorePractitionerRole | Vínculo do profissional com a UBS |
| AgroSUSUBS | BRCoreOrganization | Unidade Básica de Saúde |
| AgroSUSLaboratorio | BRCoreOrganization | Laboratório clínico |
| AgroSUSVisitaACS | BRCoreEncounter | Visita domiciliar do ACS (aplicação da anamnese) |
| AgroSUSAtendimentoUBS | BRCoreEncounter | Atendimento clínico na UBS |
| AgroSUSAnamneseResponse | QuestionnaireResponse | Resposta ao questionário de anamnese |
| AgroSUSIntoxicacaoPesticida | BRCoreCondition | Condição clínica de suspeita/confirmação de intoxicação |
| AgroSUSSolicitacaoExame | BRCoreServiceRequest | Solicitação de exames laboratoriais |
| AgroSUSResultadoLaboratorial | BRCoreObservation | Resultado individual de exame |
| AgroSUSLaudoLaboratorial | BRCoreDiagnosticReport | Laudo consolidado |
| AgroSUSPlanoAcompanhamento | BRCoreCarePlan | Plano de acompanhamento longitudinal |
| AgroSUSProvenance | Provenance | Rastreabilidade de autoria/edição dos registros |
| AgroSUSAuditEvent | AuditEvent | Auditoria de acesso e operações |
| AgroSUSTransacaoVisita | Bundle (transaction) | Bundle atômico e idempotente da visita do ACS (paciente + visita + anamnese + proveniência, 4 entries fixas com `PUT` condicional) |

Todos os perfis usam Must Support de forma consistente, restringem referências (`only Reference(...)`) entre si formando um grafo coerente (ex.: `AgroSUSIntoxicacaoPesticida.evidence.detail` aponta para anamnese/resultado/laudo; `AgroSUSPlanoAcompanhamento.addresses` aponta para a condição), e há um padrão elegante de segurança/rastreabilidade via `AgroSUSAuditEvent` e `AgroSUSProvenance`, ambos com `target`/`entity.what`/`agent.who` cobrindo toda a cadeia de recursos clínicos.

**Não há extensions customizadas** (`input/fsh/extensions/` está vazio) — o perfil de paciente referencia `extension[raca]`, que deve vir do BR Core, não sendo definida localmente.

### 2.2 Terminologia — 17 CodeSystems e 9 ValueSets locais, todos completos

CodeSystems cobrem: propriedade rural, atividade agrícola/tipo de produção/fonte de água/situação de posse, assistência técnica, capacitação, classificação toxicológica de defensivos, armazenamento de defensivos, exposição ocupacional (dias/horas de aplicação, vias, equipamentos, responsável), EPI (frequência de uso, armazenamento, motivos de não uso), destinação de embalagens, exposição familiar, condições/sintomas (referidas e últimos 30 dias), histórico de intoxicação/vigilância, avaliação de boas práticas, categoria de plano de cuidado, escolaridade e tipo de coleta.

ValueSets locais cobrem exames laboratoriais, resultados laboratoriais, intoxicação por pesticida (mapeada a CID-10), ocupação do ACS e ocupação do profissional da UBS (ambas via CBO, `required`). O restante das ValueSets vistas em `fsh-generated/resources` (ex. `armazenamento-epi`, `avaliacao-boas-praticas`, `categoria-plano-cuidado`, etc.) são geradas automaticamente a partir dos CodeSystems homônimos pelo SUSHI, não exigindo arquivo `.fsh` próprio — não é uma lacuna.

### 2.3 Questionário de anamnese (`questionnaires/AgroSUSAnamnese.fsh`) — extenso, 1333 linhas

Instrumento único (`agrosus-anamnese`, versão 0.18.0) com 17 seções ativas de 18 planejadas:

1. Identificação do instrumento · 2. Dados pessoais · 3. Propriedade rural · 4. Assistência técnica · 5. Capacitação · 6. Defensivos utilizados e conformidade legal · 7. Rastreabilidade das aplicações · 8. Frequência e forma de exposição · 9. EPI · 10. Armazenamento de defensivos · 11. Destinação de embalagens · 12. Exposição familiar/ambiental · 13. Condições de saúde e sintomas (parte A e B, últimos 30 dias) · 14. Histórico de intoxicação e vigilância · 15. Indicadores de boas práticas · 17. Observações do ACS · 18. Encerramento assistencial.

**A Seção 16 foi explicitamente adiada** ("adiada até validação do algoritmo clínico" — linha 1308), indicando um ponto de decisão-suporte clínico (provavelmente escore de risco/triagem de intoxicação) que ainda não foi modelado. Isso é coerente com o fato de `plandefinitions/`, `libraries/`, `measures/` e `activitydefinitions/` estarem todos vazios, apesar das dependências `hl7.fhir.uv.cpg`, `hl7.fhir.uv.cql` e `hl7.fhir.us.cqfmeasures` já estarem declaradas no `sushi-config.yaml` — a infraestrutura de decisão-suporte foi prevista mas não iniciada.

### 2.4 CapabilityStatement (`capabilities/AgroSUSCapabilityStatement.fsh`)

Define o contrato mínimo de servidor (`kind = requirements`) para 14 tipos de recurso (Patient, Practitioner, PractitionerRole, Organization, Questionnaire, QuestionnaireResponse, Encounter, ServiceRequest, Observation, DiagnosticReport, Condition, CarePlan, Provenance, AuditEvent), com interações, `searchParam`s e políticas de referência bem especificadas, incluindo a interação `transaction` para a sincronização da visita do ACS. É um artefato maduro e alinhado aos perfis.

### 2.5 Exemplos (`input/fsh/examples/`) — 13 arquivos, cobrindo praticamente todos os perfis

Existem instâncias de exemplo para ACS, vínculo do ACS, UBS, paciente, profissionais da UBS (médico/enfermeiro/técnico), visita do ACS, resposta de anamnese, atendimento + condição de intoxicação, solicitação de exame, resultados laboratoriais, plano de acompanhamento, transação da visita e rastreabilidade. A cobertura de exemplos é boa; não há exemplo isolado de `AgroSUSAuditEvent` nem de `AgroSUSProvenance` fora do que aparece embutido nos exemplos de transação/plano.

### 2.6 O que está declarado mas vazio (dependências criadas, conteúdo não iniciado)

`extensions/`, `models/` (Logical Models), `actors/`, `capabilities/` (só o CapabilityStatement existe), `requirements/`, `scenarios/`, `activitydefinitions/`, `plandefinitions/`, `measures/`, `libraries/`, `conceptmaps/` — todos contêm apenas `.gitignore`. `rulesets/` tem dois arquivos de apenas 1 linha cada (`rulesets-logicalmodels.fsh`, `rulesets-questionnaires.fsh`), aparentemente placeholders do template, não regras reais.

### 2.7 Conteúdo narrativo (`input/pagecontent/*.md`)

**Praticamente todo o conteúdo narrativo ainda é o texto genérico do template WHO SMART Guidelines**, com marcadores literais `[insert health domain here]` em `index.md`, `functional-requirements.md`, `system-actors.md`, entre outros. `business-requirements.md`, `scenarios.md`, `transactions.md` e `concepts.md` também mantêm o texto padrão/exemplos da OMS, sem qualquer adaptação ao domínio AgroSUS. O `README.md` da raiz também não foi adaptado (ainda descreve o "WHO SMART GUIDELINES - EMPTY IG" genérico). Ou seja: **o trabalho de modelagem técnica (FSH) está bem avançado, mas a documentação/narrativa do IG está essencialmente não iniciada.**

---

## 3. Problemas encontrados (achados de verificação)

Rodei o SUSHI (v3.20.0) contra o repositório para validar o build.

**Bug crítico e ativo:** o `sushi-config.yaml` está com **erro de sintaxe YAML** introduzido no último commit (`5431daa`, "atualizacao", hoje 09:37). O campo `title` foi alterado de `Módulo AgroSUS — Projeto mareIA` para `Projeto mareIA: módulo AgroSUS para telemonitoramento...` — o novo valor contém dois-pontos (`:`) sem estar entre aspas, o que o parser YAML interpreta como um novo par chave-valor aninhado. Resultado: **o build do SUSHI falha imediatamente** com `Error parsing configuration: Nested mappings are not allowed in compact mappings`, antes mesmo de processar qualquer FSH. Isso provavelmente também quebra o workflow do GitHub Actions (`.github/workflows/fhirbuild.yml` / `ghbuild.yml`) na próxima execução.

*Correção trivial:* colocar o valor entre aspas, ex. `title: "Projeto mareIA: módulo AgroSUS para telemonitoramento..."`.

Depois de corrigir esse ponto localmente para testar, o SUSHI conseguiu importar corretamente 67 definições e 29 instâncias a partir de 57 documentos FSH — confirmando que o conteúdo FSH em si está sintaticamente saudável. O ambiente de sandbox usado não tem acesso à internet para baixar os pacotes de dependência (`packages.fhir.org`), então não foi possível validar a resolução completa de perfis/terminologias externas (BR Core, hl7.terminology etc.) nem gerar o IG final — isso precisa ser validado no ambiente real do usuário ou no CI do GitHub.

**Outros pontos de atenção:**
- As dependências `br.gov.saude.*.fhir` estão fixadas em `1.0.0`; vale confirmar se essa é de fato a versão publicada mais recente antes da próxima build, pois pacotes brasileiros do SUS têm mudado de versão com frequência.
- `applyExtensionMetadataToRoot`, `FSHOnly` e outras flags do SUSHI não foram configuradas — irrelevante agora (nenhuma extension local existe), mas relevante assim que a lacuna da seção 2.6 for endereçada.

---

## 4. Síntese: maturidade por trilha

A modelagem de dados clínicos e operacionais (perfis, terminologia, questionário, exemplos, contrato de API) está claramente na fase mais madura do projeto — é um conjunto coerente, com boa disciplina de Must Support e referências cruzadas bem pensadas, cobrindo o ciclo completo: cadastro do trabalhador → visita do ACS → anamnese → atendimento na UBS → suspeita/condição → solicitação e resultado de exame → laudo → plano de acompanhamento → auditoria/proveniência.

As trilhas ainda não iniciadas são, em ordem de dependência natural: (a) a lógica de decisão-suporte (Seção 16 da anamnese, Library/PlanDefinition/ActivityDefinition/Measure), (b) extensions locais específicas do AgroSUS (hoje dependendo apenas do que o BR Core já fornece), (c) o conteúdo narrativo do IG (personas, cenários, dicionário de dados, requisitos funcionais/não funcionais, diagramas de sequência), e (d) a validação/publicação real do build, hoje bloqueada pelo bug de YAML.

---

## 5. Sugestões de próximas implementações

Para a sequência do trabalho, as frentes mais naturais — dado o que já existe — são:

1. Corrigir o `sushi-config.yaml` e validar um build completo (idealmente no ambiente do usuário ou via CI), garantindo que os pacotes brasileiros e HL7 resolvem corretamente.
2. Modelar a lógica de decisão-suporte da Seção 16 (provável escore/triagem de risco de intoxicação) usando `Library` (CQL) + `PlanDefinition`/`ActivityDefinition`, já que as dependências CPG/CQL/CRMI/cqf-measures estão declaradas mas não usadas.
3. Definir extensions locais explícitas do AgroSUS (ex. `extension[raca]` hoje só referenciada, não definida) e considerar Logical Models para os dados agrícolas/ambientais que não mapeiam bem a recursos FHIR padrão.
4. Preencher o conteúdo narrativo do IG (system-actors, personas, scenarios, business-processes, dictionary, indicators, functional/non-functional requirements) — hoje são todos placeholders do template WHO.
5. Completar exemplos faltantes (AuditEvent e Provenance isolados) e adicionar testes/QA automatizados do IG.
