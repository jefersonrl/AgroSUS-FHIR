# Artifacts Summary - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md) | Contrato mínimo da API FHIR R4 do AgroSUS para o aplicativo do ACS, o dashboard da UBS e os sistemas laboratoriais. |

### Knowledge Artifacts: Plan Definitions 

These define workflows, rules, strategies, or protocols as part of content in this implementation guide.

| | |
| :--- | :--- |
| [AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos](PlanDefinition-AgroSUSEstratificacaoRisco.md) | Workflow de suporte à decisão: classifica o resultado da colinesterase, define a periodicidade do monitoramento biológico e avalia gatilhos de alerta independentes (sintomas, produto sem EPI adequado, histórico de intoxicação). Apoia — não substitui — o julgamento clínico do profissional assistencial da UBS. |

### Knowledge Artifacts: Measure 

These define measures as part of content in this implementation guide.

| | |
| :--- | :--- |
| [Adesão à periodicidade semestral do monitoramento biológico (AgroSUS)](Measure-AgroSUSMeasureAdesaoPeriodicidade.md) | Proporção de trabalhadores elegíveis com exame de colinesterase realizado dentro dos últimos 6 meses, conforme a periodicidade mínima da NR-7 item 7.4.2.1. |
| [Cobertura da anamnese ocupacional AgroSUS](Measure-AgroSUSMeasureCoberturaAnamnese.md) | Proporção de trabalhadores cadastrados com QuestionnaireResponse da anamnese AgroSUS registrada, medindo a implantação do instrumento de triagem ocupacional pelo ACS. |
| [Cobertura de uso adequado de EPI (AgroSUS)](Measure-AgroSUSMeasureCoberturaEPI.md) | Proporção de trabalhadores que manuseiam defensivos de categoria toxicológica 1 ou 2 com uso adequado de Equipamento de Proteção Individual registrado na anamnese, conforme a NR-31 item 31.8. |
| [Cobertura do exame basal de colinesterase (AgroSUS)](Measure-AgroSUSMeasureCoberturaBasal.md) | Proporção de trabalhadores que manuseiam organofosforados/carbamatos com valor basal de colinesterase registrado na admissão, conforme exigido pela NR-7 item 7.4.1. |
| [Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS)](Measure-AgroSUSMeasureAlteradosComConduta.md) | Proporção de resultados de colinesterase acima do Índice Biológico Máximo Permitido (IBMP) com afastamento ou conduta clínica registrada, conforme a Nota Informativa nº 16/2019, Anexo III item 3. |

### Knowledge Artifacts: Libraries 

These define logic, asset collections and other libraries as part of content in this implementation guide.

| | |
| :--- | :--- |
| [Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)](Library-AgroSUSIntoxicacaoLogic.md) | Regras de decisão do pathway AgroSUS (humano-legíveis; implementação em CQL prevista para fase L4). Fundamentadas em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Não há, nessas fontes, um escore composto de risco (diferente do IVCF-20 do pathway ATENTO 60+) — ver ADR-0002. A lógica combina um indicador biológico objetivo (colinesterase) com gatilhos de alerta discretos e independentes.1) VALOR BASAL DA COLINESTERASE: obtido no exame admissional, antes do início do manuseio de organofosforados/carbamatos. Se ausente, afastar o trabalhador por 30 dias e realizar o exame (idealmente 2 análises com 7–15 dias de intervalo). Repetir a obtenção a cada 2 anos. Fonte: NR-7 item 7.4.1; Nota Informativa 16/2019, Anexo I item 1 e 3.2) PERCENTUAL DE INIBIÇÃO: % inibição = (atividade basal − atividade obtida) / atividade basal × 100. Fonte: Nota Informativa 16/2019, Anexo I item 4.3) CLASSIFICAÇÃO DO RESULTADO:* Colinesterase PLASMÁTICA: até 50% de inibição = Normal; acima de 50% = Alterado (excede o Índice Biológico Máximo Permitido — IBMP).
* Colinesterase de SANGUE TOTAL/ERITROCITÁRIA: até 25% de inibição = Normal; acima de 25% = Alterado (excede o IBMP).
* PRECAUÇÃO: redução de 20% ou no mínimo 30% (mesmo sem atingir o IBMP) → alerta de atenção, reforçar práticas de proteção (EPI/técnica de aplicação), sem afastamento automático. Fonte: NR-7 Quadro I; Nota Informativa 16/2019, Anexo I item 4 e Quadro 1.
4) PERIODICIDADE DO MONITORAMENTO BIOLÓGICO: no mínimo SEMESTRAL em rotina (podendo ser reduzida por critério do médico coordenador do PCMSO ou negociação coletiva). Gatilhos adicionais, independentes da rotina: exame admissional; retorno ao trabalho após afastamento > 30 dias; mudança de função; sintomático (a qualquer tempo, mediante solicitação médica); após aplicações em surto/bloqueio; retestagem após resultado alterado. Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa 16/2019, Anexo III item 1.1.5) CONDUTA FRENTE A RESULTADO ALTERADO: afastar o trabalhador do contato com o agrotóxico por 30 dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador; repetir o exame após 30 dias; investigar outras causas de depressão enzimática antes de concluir pela exposição ocupacional. Fonte: Nota Informativa 16/2019, Anexo III item 3.6) CONTRAINDICAÇÃO AO MANUSEIO: trabalhadores com hepatopatia, cardiopatia, pneumopatia, desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou uso de medicamento colinesterase-inibidor não devem manusear organofosforados/carbamatos. Fonte: Nota Informativa 16/2019, Anexo III item 2.2.7) GATILHOS DE ALERTA INDEPENDENTES (não pontuados, não compõem escore):* Sintoma agudo compatível com intoxicação (Seção 13 da anamnese) → ALERTA crítico.
* Manuseio de defensivo de categoria toxicológica 1 ou 2 (AgroSUSClassificacaoToxicologicaVS) sem EPI adequado registrado (Seção 9) → ALERTA crítico.
* Histórico de intoxicação aguda prévia (Seção 14) → ALERTA de acompanhamento prioritário.
* Colinesterase alterada (regra 3) → ALERTA crítico; colinesterase em precaução → ALERTA de atenção. Conduta comum a qualquer ALERTA: priorizar avaliação clínica na UBS e considerar antecipação do plano de acompanhamento (`AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o julgamento clínico do profissional assistencial.
8) REGISTRO: eventos de exame, afastamento e conduta devem ser mantidos no prontuário/registro individual por, no mínimo, 20 anos após o desligamento do trabalhador. Fonte: NR-7 item 7.4.5.1.ITEM EM ABERTO: não existe, nas fontes L1 adotadas, uma fórmula de escore composto de risco ocupacional (diferente do IVCF-20). Ver ADR-0002 — não inferir pesos ou combinação entre os gatilhos acima sem validação clínica. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Formulário de Anamnese AgroSUS](Questionnaire-agrosus-anamnese.md) | Formulário de anamnese ocupacional e ambiental aplicado pelo Agente Comunitário de Saúde aos pequenos produtores rurais. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Agente Comunitário de Saúde AgroSUS](StructureDefinition-agrosus-acs.md) | Perfil do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS. |
| [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md) | Atendimento realizado na UBS para avaliação, investigação e acompanhamento assistencial do trabalhador rural. |
| [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md) | Registro de segurança para rastrear consultas, alterações e outras operações realizadas sobre os dados do AgroSUS. |
| [Função do ACS no AgroSUS](StructureDefinition-agrosus-acs-role.md) | Perfil do vínculo do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde com a organização responsável pelo atendimento no AgroSUS. |
| [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md) | Vínculo funcional do profissional assistencial com a UBS responsável pelo acompanhamento do trabalhador rural no AgroSUS. |
| [Laboratório AgroSUS](StructureDefinition-agrosus-laboratorio.md) | Organização responsável pela realização e emissão de resultados de exames laboratoriais utilizados no AgroSUS. |
| [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md) | Laudo que agrupa resultados laboratoriais emitidos para o acompanhamento do trabalhador rural no AgroSUS. |
| [Paciente AgroSUS](StructureDefinition-agrosus-patient.md) | Perfil do pequeno produtor rural acompanhado pelo módulo AgroSUS no âmbito da Atenção Primária à Saúde. |
| [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md) | Plano longitudinal definido pela equipe assistencial da UBS para acompanhamento clínico e ocupacional do trabalhador rural. |
| [Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs.md) | Profissional da Unidade Básica de Saúde responsável pela avaliação clínica, acompanhamento ou apoio assistencial ao trabalhador rural no AgroSUS. |
| [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) | Registro de autoria, criação, atualização e origem dos recursos clínicos e assistenciais do AgroSUS. |
| [Resposta da Anamnese AgroSUS](StructureDefinition-agrosus-anamnese-response.md) | Perfil da resposta ao formulário de anamnese ocupacional e ambiental AgroSUS aplicado pelo Agente Comunitário de Saúde. |
| [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md) | Resultado individual de exame ou biomarcador laboratorial utilizado no acompanhamento do trabalhador rural. |
| [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md) | Solicitação de exame laboratorial realizada por profissional assistencial da UBS para acompanhamento do trabalhador rural no AgroSUS. |
| [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md) | Condição clínica registrada por profissional assistencial para representar suspeita, confirmação ou descarte de intoxicação por pesticidas. |
| [Transação da Visita do ACS AgroSUS](StructureDefinition-agrosus-transacao-visita.md) | Bundle transacional e idempotente utilizado pelo aplicativo do ACS para sincronizar o paciente, a visita, a resposta da anamnese e sua proveniência em uma única operação atômica. |
| [Unidade Básica de Saúde AgroSUS](StructureDefinition-agrosus-ubs.md) | Perfil da Unidade Básica de Saúde responsável pelo acompanhamento do trabalhador rural no AgroSUS. |
| [Visita do ACS AgroSUS](StructureDefinition-agrosus-visita-acs.md) | Visita ou atendimento em campo no qual o Agente Comunitário de Saúde aplica ou atualiza a anamnese AgroSUS. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Categorias de Plano de Cuidado AgroSUS](ValueSet-agrosus-categoria-plano-cuidado.md) | Categorias permitidas para os planos de acompanhamento AgroSUS. |
| [Classificação Toxicológica de Defensivos Agrícolas](ValueSet-agrosus-classificacao-toxicologica.md) | Categorias toxicológicas permitidas no formulário AgroSUS. |
| [Condições de saúde referidas](ValueSet-agrosus-condicao-saude-referida.md) | Condições de saúde preexistentes declaradas pelo trabalhador durante a anamnese. |
| [Destinação de embalagens não devolvidas](ValueSet-agrosus-destinacao-embalagens-nao-devolvidas.md) | Formas de destinação das embalagens vazias quando não ocorre devolução em local autorizado. |
| [Dias de aplicação por mês](ValueSet-agrosus-dias-aplicacao-mes.md) | Faixas de frequência mensal de aplicação de defensivos agrícolas. |
| [Equipamentos utilizados na aplicação](ValueSet-agrosus-equipamento-aplicacao.md) | Tipos de equipamento utilizados na aplicação de defensivos agrícolas. |
| [Escolaridade AgroSUS](ValueSet-agrosus-escolaridade.md) | Categorias permitidas para escolaridade no formulário AgroSUS. |
| [Exames Laboratoriais AgroSUS](ValueSet-agrosus-exames-laboratoriais.md) | Exames e painéis laboratoriais previstos para o acompanhamento assistencial dos trabalhadores rurais no AgroSUS. |
| [Familiares que auxiliam na aplicação](ValueSet-agrosus-familiares-auxiliam-aplicacao.md) | Familiares que auxiliam o trabalhador rural na aplicação de defensivos agrícolas. |
| [Fonte de Água da Propriedade](ValueSet-agrosus-fonte-agua.md) | Fontes de água utilizadas na propriedade rural. |
| [Formas de armazenamento dos registros](ValueSet-agrosus-armazenamento-registros.md) | Formas utilizadas para armazenar os registros das aplicações de defensivos agrícolas. |
| [Formação do Responsável Técnico](ValueSet-agrosus-formacao-responsavel-tecnico.md) | Formações profissionais previstas para o responsável técnico da produção. |
| [Frequência de utilização de EPI](ValueSet-agrosus-frequencia-uso-epi.md) | Frequência declarada de utilização de cada equipamento de proteção individual. |
| [Horas de aplicação por dia](ValueSet-agrosus-horas-aplicacao-dia.md) | Faixas de duração diária da aplicação de defensivos agrícolas. |
| [Instituição de Assistência Técnica](ValueSet-agrosus-instituicao-assistencia.md) | Instituições que podem prestar assistência técnica ao produtor rural. |
| [Intoxicação por pesticidas AgroSUS](ValueSet-agrosus-intoxicacao-pesticida.md) | Códigos CID-10 utilizados para representar suspeita ou confirmação clínica de efeito tóxico de pesticidas. |
| [Local de armazenamento dos EPIs](ValueSet-agrosus-armazenamento-epi.md) | Locais utilizados para o armazenamento dos equipamentos de proteção individual. |
| [Local de armazenamento dos defensivos agrícolas](ValueSet-agrosus-local-armazenamento-defensivos.md) | Locais onde os defensivos agrícolas são armazenados na propriedade. |
| [Meses de maior intensidade de uso](ValueSet-agrosus-mes-maior-intensidade.md) | Meses do ano com maior intensidade de utilização de defensivos agrícolas. |
| [Motivos de não utilização de EPI](ValueSet-agrosus-motivo-nao-uso-epi.md) | Motivos declarados para a não utilização dos equipamentos de proteção individual. |
| [Número de intoxicações agudas anteriores](ValueSet-agrosus-numero-intoxicacoes-agudas.md) | Faixas para registro do número autorreferido de episódios anteriores de intoxicação aguda. |
| [Ocupações dos profissionais assistenciais da UBS](ValueSet-agrosus-ocupacao-profissional-ubs.md) | Ocupações CBO permitidas para profissionais assistenciais que utilizam o dashboard AgroSUS na Unidade Básica de Saúde. |
| [Ocupações permitidas para o ACS no AgroSUS](ValueSet-agrosus-ocupacao-acs.md) | Ocupações da Classificação Brasileira de Ocupações permitidas para o profissional que aplica a anamnese AgroSUS. |
| [Principal Atividade Agrícola](ValueSet-agrosus-atividade-agricola.md) | Principais atividades desenvolvidas na propriedade rural. |
| [Prioridade de Alerta AgroSUS](ValueSet-agrosus-prioridade-alerta.md) | Níveis de prioridade permitidos para os alertas da lógica de decisão do AgroSUS. |
| [Responsável pela aplicação](ValueSet-agrosus-responsavel-aplicacao.md) | Pessoas ou organizações que realizam a aplicação dos defensivos agrícolas. |
| [Respostas dos indicadores de boas práticas](ValueSet-agrosus-avaliacao-boas-praticas.md) | Respostas permitidas para cada indicador de boa prática agrícola. |
| [Resultados Laboratoriais AgroSUS](ValueSet-agrosus-resultados-laboratoriais.md) | Biomarcadores laboratoriais utilizados no acompanhamento assistencial dos trabalhadores rurais no AgroSUS. |
| [Sinais e sintomas dos últimos 30 dias](ValueSet-agrosus-sintoma-ultimos-30-dias.md) | Sinais e sintomas investigados pelo formulário AgroSUS, sem significado diagnóstico isolado. |
| [Situação de Posse da Terra](ValueSet-agrosus-situacao-posse.md) | Situações de posse da propriedade rural. |
| [Temas de Capacitação AgroSUS](ValueSet-agrosus-temas-capacitacao.md) | Temas que podem ser selecionados no registro de capacitação do trabalhador rural. |
| [Tipo de Produção Agrícola](ValueSet-agrosus-tipo-producao.md) | Tipos de produção utilizados na propriedade rural. |
| [Tipos de Coleta AgroSUS](ValueSet-agrosus-tipo-coleta.md) | Modalidades permitidas para aplicação do formulário AgroSUS. |
| [Vias de exposição](ValueSet-agrosus-via-exposicao.md) | Vias mais comuns de exposição aos defensivos agrícolas. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Armazenamento de defensivos agrícolas AgroSUS](CodeSystem-agrosus-armazenamento-defensivos.md) | Terminologia dos locais utilizados para armazenamento de defensivos agrícolas. |
| [Assistência Técnica AgroSUS](CodeSystem-agrosus-assistencia-tecnica.md) | Códigos relacionados à assistência e à responsabilidade técnica na produção rural. |
| [Avaliação de boas práticas agrícolas AgroSUS](CodeSystem-agrosus-avaliacao-boas-praticas.md) | Terminologia utilizada para avaliar o atendimento aos indicadores de boas práticas agrícolas no formulário AgroSUS. |
| [Categorias de Plano de Cuidado AgroSUS](CodeSystem-agrosus-categoria-plano-cuidado.md) | Categorias utilizadas para classificar os planos longitudinais de acompanhamento do trabalhador rural. |
| [Classificação Toxicológica de Defensivos Agrícolas](CodeSystem-agrosus-classificacao-toxicologica.md) | Representação FHIR das categorias de classificação toxicológica estabelecidas pela Anvisa. |
| [Condições de saúde e sintomas AgroSUS](CodeSystem-agrosus-condicoes-sintomas.md) | Terminologia dos itens de condições de saúde e sintomas referidos no formulário de anamnese AgroSUS. Os códigos representam respostas do instrumento e não diagnósticos clínicos confirmados. |
| [Destinação de embalagens vazias AgroSUS](CodeSystem-agrosus-destinacao-embalagens.md) | Terminologia das formas de destinação de embalagens vazias de defensivos agrícolas quando não são devolvidas em local autorizado. |
| [Escolaridade AgroSUS](CodeSystem-agrosus-escolaridade.md) | Categorias de escolaridade utilizadas no formulário de anamnese AgroSUS. |
| [Exposição familiar AgroSUS](CodeSystem-agrosus-exposicao-familiar.md) | Terminologia para identificar familiares que auxiliam na aplicação de defensivos agrícolas. |
| [Histórico de intoxicação AgroSUS](CodeSystem-agrosus-historico-intoxicacao.md) | Terminologia para registrar a quantidade autorreferida de episódios anteriores de intoxicação aguda por defensivos agrícolas. |
| [Prioridade de Alerta AgroSUS](CodeSystem-agrosus-prioridade-alerta.md) | Níveis de prioridade clínica para os alertas gerados pela lógica de decisão do AgroSUS (colinesterase alterada, sintoma agudo, produto categoria 1/2 sem EPI, histórico de intoxicação). |
| [Rastreabilidade das aplicações AgroSUS](CodeSystem-agrosus-rastreabilidade.md) | Terminologia utilizada para identificar onde são armazenados os registros das aplicações de defensivos agrícolas. |
| [Temas de Capacitação AgroSUS](CodeSystem-agrosus-capacitacao.md) | Temas abordados em capacitações sobre o uso seguro de defensivos agrícolas. |
| [Terminologia da Propriedade Rural AgroSUS](CodeSystem-agrosus-propriedade.md) | Códigos utilizados para caracterizar propriedades rurais no formulário AgroSUS. |
| [Terminologia de equipamentos de proteção individual AgroSUS](CodeSystem-agrosus-epi.md) | Terminologia para frequência de uso, armazenamento e motivos de não utilização dos equipamentos de proteção individual. |
| [Terminologia de exposição ocupacional AgroSUS](CodeSystem-agrosus-exposicao.md) | Terminologia das características de frequência e forma de exposição aos defensivos agrícolas. |
| [Tipos de Coleta AgroSUS](CodeSystem-agrosus-tipo-coleta.md) | Modalidades de aplicação do formulário de anamnese ocupacional e ambiental do AgroSUS. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ACS AgroSUS de exemplo](Practitioner-agrosus-acs-exemplo.md) | Exemplo sintético de Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS. |
| [Exemplo de Atendimento Clínico da UBS AgroSUS](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md) | Avaliação clínica fictícia realizada após a visita e anamnese do ACS. |
| [Exemplo de Atendimento para Revisão dos Exames](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md) | Atendimento fictício para avaliação dos resultados laboratoriais e definição do acompanhamento longitudinal. |
| [Exemplo de Auditoria de Consulta ao Dashboard](AuditEvent-agrosus-auditoria-consulta-dashboard-exemplo.md) | Evento fictício de acesso aos dados do trabalhador por profissional da UBS. |
| [Exemplo de Enfermeira da UBS AgroSUS](Practitioner-agrosus-profissional-enfermeiro-exemplo.md) | Enfermeira fictícia responsável pelo acompanhamento dos trabalhadores rurais. |
| [Exemplo de Laboratório AgroSUS](Organization-agrosus-laboratorio-exemplo.md) | Laboratório municipal fictício responsável pela emissão dos resultados. |
| [Exemplo de Laudo de Hemograma AgroSUS](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md) | Laudo fictício que agrupa os resultados individuais do hemograma. |
| [Exemplo de Médico da UBS AgroSUS](Practitioner-agrosus-profissional-medico-exemplo.md) | Médico fictício da Estratégia de Saúde da Família. |
| [Exemplo de Paciente AgroSUS](Patient-agrosus-patient-example.md) | Trabalhadora rural fictícia utilizada para validar o perfil Paciente AgroSUS. |
| [Exemplo de Plano de Acompanhamento AgroSUS](CarePlan-agrosus-plano-acompanhamento-exemplo.md) | Plano fictício para acompanhamento longitudinal de trabalhadora rural com suspeita de intoxicação por pesticida. |
| [Exemplo de Proveniência da Anamnese AgroSUS](Provenance-agrosus-provenance-anamnese-exemplo.md) | Registro fictício da autoria da resposta da anamnese pelo ACS. |
| [Exemplo de Proveniência do Plano de Acompanhamento](Provenance-agrosus-provenance-plano-acompanhamento-exemplo.md) | Registro fictício da autoria médica do plano longitudinal AgroSUS. |
| [Exemplo de Resposta da Anamnese AgroSUS](QuestionnaireResponse-agrosus-anamnese-response-example.md) | Resposta parcial fictícia da anamnese AgroSUS registrada durante uma visita do ACS. |
| [Exemplo de Resultado de Hematócrito](Observation-agrosus-resultado-hematocrito-exemplo.md) |  |
| [Exemplo de Resultado de Hemoglobina](Observation-agrosus-resultado-hemoglobina-exemplo.md) |  |
| [Exemplo de Resultado de Leucócitos](Observation-agrosus-resultado-leucocitos-exemplo.md) |  |
| [Exemplo de Resultado de Plaquetas](Observation-agrosus-resultado-plaquetas-exemplo.md) |  |
| [Exemplo de Solicitação de Hemograma AgroSUS](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md) | Solicitação fictícia de hemograma completo realizada pelo médico da UBS após avaliação clínica. |
| [Exemplo de Suspeita de Intoxicação por Pesticida](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md) | Suspeita clínica fictícia registrada pelo médico da UBS e mantida em investigação. |
| [Exemplo de Transação da Visita do ACS](Bundle-agrosus-transacao-visita-exemplo.md) | Sincronização atômica e idempotente do paciente, visita, anamnese e proveniência registrados pelo aplicativo do ACS. |
| [Exemplo de Técnico de Enfermagem da UBS AgroSUS](Practitioner-agrosus-profissional-tecnico-enfermagem-exemplo.md) | Técnico de enfermagem fictício da equipe assistencial da UBS. |
| [Exemplo de Visita do ACS AgroSUS](Encounter-agrosus-visita-acs-exemplo.md) | Visita fictícia em campo para aplicação inicial da anamnese AgroSUS. |
| [Exemplo de Vínculo da Enfermeira com a UBS](PractitionerRole-agrosus-profissional-enfermeiro-role-exemplo.md) | Vínculo fictício da enfermeira com a UBS responsável pelo acompanhamento AgroSUS. |
| [Exemplo de Vínculo do Médico com a UBS](PractitionerRole-agrosus-profissional-medico-role-exemplo.md) | Vínculo fictício do médico da Estratégia de Saúde da Família com a UBS. |
| [Exemplo de Vínculo do Técnico de Enfermagem](PractitionerRole-agrosus-profissional-tecnico-enfermagem-role-exemplo.md) | Vínculo fictício do técnico de enfermagem com a UBS. |
| [UBS AgroSUS de exemplo](Organization-agrosus-ubs-exemplo.md) | Exemplo sintético de Unidade Básica de Saúde responsável pelo acompanhamento no AgroSUS. |
| [Vínculo profissional do ACS AgroSUS](PractitionerRole-agrosus-acs-role-exemplo.md) | Exemplo sintético do vínculo de um Agente Comunitário de Saúde com uma Unidade Básica de Saúde. |

