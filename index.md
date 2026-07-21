# Início - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **Início**

## Início

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ImplementationGuide/io.github.jefersonrl.agrosus | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSFHIR |

 Este Implementation Guide e seus artefatos estão em desenvolvimento (`draft`). 

 Conteúdo para fins de demonstração e implementação piloto. 

### Projeto mareIA — AgroSUS

Adaptação digital (WHO SMART Guidelines **L2/L3**) para o pathway **AgroSUS** da Plataforma mareIA — telemonitoramento e apoio à identificação precoce de **intoxicação por defensivos agrícolas** em trabalhadores rurais, na Atenção Primária à Saúde, com vigilância biológica pela **colinesterase sanguínea** (NR-7) e boas práticas de segurança no trabalho rural (NR-31).

> Este IG cobre **apenas o pathway AgroSUS**. No SMART Guidelines, cada linha de cuidado da Plataforma mareIA é um IG independente — ver ADR-0003 (`docs/adr/`) sobre a disciplina de documentação adotada.

#### Fluxo de cuidado (4 macrofases)

`Cadastro → Triagem ocupacional (anamnese) → Resposta clínica e vigilância biológica → Acompanhamento longitudinal`

1. **Cadastro**— identificação do trabalhador rural pelo ACS, cadastro do trabalhador e da propriedade rural.
1. **Triagem ocupacional**— aplicação da anamnese ocupacional/ambiental (18 seções) em visita domiciliar, sincronizada de forma atômica e offline-first.
1. **Resposta clínica e vigilância biológica**— avaliação na UBS, monitoramento da colinesterase (periodicidade semestral mínima, NR-7), registro da condição clínica quando aplicável.
1. **Acompanhamento longitudinal**— plano de acompanhamento com periodicidade de reavaliação, proveniência e auditoria de todos os registros.

#### Componentes do DAK (L2)

| | | |
| :--- | :--- | :--- |
| 1 | Intervenções e recomendações | [l2-interventions](l2-interventions.md) |
| 2 | Personas genéricas | [l2-personas](l2-personas.md) |
| 3 | Cenários de uso | [l2-user-scenarios](l2-user-scenarios.md) |
| 4 | Processos de negócio e workflows | [l2-business-process](l2-business-process.md) |
| 5 | Elementos de dados (dicionário) | [l2-data-dictionary](l2-data-dictionary.md) |
| 6 | Lógica de suporte à decisão | [l2-decision-logic](l2-decision-logic.md) |
| 7 | Indicadores de programa | [l2-indicators](l2-indicators.md) |
| 8 | Requisitos | [l2-requirements](l2-requirements.md) |
| 9 | Cenários de teste | [l2-test-scenarios](l2-test-scenarios.md) |

#### Itens pendentes de confirmação clínica

* **Escore de risco ocupacional** — não há, em NR-7/NR-31, um instrumento composto de risco validado (`docs/adr/0002-escore-risco-nao-definido.md`).

#### Fora de escopo desta fase

* **Classificação de risco por API externa de IA** — descrita no caso de uso do projeto; decisão da equipe de manter a lógica rule-based atual e tratar a integração com IA como capacidade futura (`docs/adr/0004-caso-de-uso-fatec-personas-cenarios.md`).

**Fonte (L1): NR-7 (PCMSO), NR-31 (Segurança e Saúde no Trabalho Rural) e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS — Ministério da Saúde. Ver `sources/_normas_extract.txt`.**

* Para a lista completa de artefatos definidos neste IG, ver o [Artifact Index](artifacts.md).
* Uma cópia offline completa deste IG está disponível na página de [Downloads](downloads.md).

### Dependencies

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (io.github.jefersonrl.agrosus.r4)](package.r4.tgz) and [R4B (io.github.jefersonrl.agrosus.r4b)](package.r4b.tgz) are available.

### Global Profiles

*There are no Global profiles defined*

### IP Statements

Este publication inclui o IP abrangido pelas seguintes declarações.

* Classificação conforme a RDC Anvisa nº 294/2019.

* [Classificação Toxicológica de Defensivos Agrícolas](CodeSystem-agrosus-classificacao-toxicologica.md): [AgroSUSAnamnese](Questionnaire-agrosus-anamnese.md) and [AgroSUSClassificacaoToxicologicaVS](ValueSet-agrosus-classificacao-toxicologica.md)


* Este material contém conteúdo do [LOINC](http://loinc.org). LOINC é copyright © 1995-2020, Regenstrief Institute, Inc. e o Logical Observation Identifiers Names and Codes (LOINC) Committee e está disponível sem custo sob a [licença](http://loinc.org/license). LOINC® é uma marca registada dos Estados Unidos da América do Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.1.0/CodeSystem-v3-loinc.html): [AgroSUSExamesLaboratoriaisVS](ValueSet-agrosus-exames-laboratoriais.md), [AgroSUSLaudoLaboratorial](StructureDefinition-agrosus-laudo-laboratorial.md)... Show 9 more, [AgroSUSResultadoLaboratorial](StructureDefinition-agrosus-resultado-laboratorial.md), [AgroSUSResultadosLaboratoriaisVS](ValueSet-agrosus-resultados-laboratoriais.md), [AgroSUSSolicitacaoExame](StructureDefinition-agrosus-solicitacao-exame.md), [DiagnosticReport/agrosus-laudo-hemograma-exemplo](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md), [Observation/agrosus-resultado-hematocrito-exemplo](Observation-agrosus-resultado-hematocrito-exemplo.md), [Observation/agrosus-resultado-hemoglobina-exemplo](Observation-agrosus-resultado-hemoglobina-exemplo.md), [Observation/agrosus-resultado-leucocitos-exemplo](Observation-agrosus-resultado-leucocitos-exemplo.md), [Observation/agrosus-resultado-plaquetas-exemplo](Observation-agrosus-resultado-plaquetas-exemplo.md) and [ServiceRequest/agrosus-solicitacao-hemograma-exemplo](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)


* Este material contém conteúdo que é copyright da SNOMED International. Os implementadores destas especificações devem ter a licença apropriada de afiliado da SNOMED CT - para mais informações contacte [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) ou [info@snomed.org](mailto:info@snomed.org).

* [Termos clínicos SNOMED&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [ServiceRequest/agrosus-solicitacao-hemograma-exemplo](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.1.0/CodeSystem-ISO3166Part1.html): [AgroSUSACS](StructureDefinition-agrosus-acs.md), [AgroSUSACSRole](StructureDefinition-agrosus-acs-role.md)... Show 77 more, [AgroSUSAnamnese](Questionnaire-agrosus-anamnese.md), [AgroSUSAnamneseResponse](StructureDefinition-agrosus-anamnese-response.md), [AgroSUSArmazenamentoDefensivosCS](CodeSystem-agrosus-armazenamento-defensivos.md), [AgroSUSArmazenamentoEPIVS](ValueSet-agrosus-armazenamento-epi.md), [AgroSUSArmazenamentoRegistrosVS](ValueSet-agrosus-armazenamento-registros.md), [AgroSUSAssistenciaTecnicaCS](CodeSystem-agrosus-assistencia-tecnica.md), [AgroSUSAtendimentoUBS](StructureDefinition-agrosus-atendimento-ubs.md), [AgroSUSAtividadeAgricolaVS](ValueSet-agrosus-atividade-agricola.md), [AgroSUSAuditEvent](StructureDefinition-agrosus-audit-event.md), [AgroSUSAvaliacaoBoasPraticasCS](CodeSystem-agrosus-avaliacao-boas-praticas.md), [AgroSUSAvaliacaoBoasPraticasVS](ValueSet-agrosus-avaliacao-boas-praticas.md), [AgroSUSCapacitacaoCS](CodeSystem-agrosus-capacitacao.md), [AgroSUSCategoriaPlanoCuidadoCS](CodeSystem-agrosus-categoria-plano-cuidado.md), [AgroSUSCategoriaPlanoCuidadoVS](ValueSet-agrosus-categoria-plano-cuidado.md), [AgroSUSClassificacaoToxicologicaCS](CodeSystem-agrosus-classificacao-toxicologica.md), [AgroSUSClassificacaoToxicologicaVS](ValueSet-agrosus-classificacao-toxicologica.md), [AgroSUSCondicaoSaudeReferidaVS](ValueSet-agrosus-condicao-saude-referida.md), [AgroSUSCondicoesSintomasCS](CodeSystem-agrosus-condicoes-sintomas.md), [AgroSUSDestinacaoEmbalagensCS](CodeSystem-agrosus-destinacao-embalagens.md), [AgroSUSDestinacaoEmbalagensNaoDevolvidasVS](ValueSet-agrosus-destinacao-embalagens-nao-devolvidas.md), [AgroSUSDiasAplicacaoMesVS](ValueSet-agrosus-dias-aplicacao-mes.md), [AgroSUSEPICS](CodeSystem-agrosus-epi.md), [AgroSUSEquipamentoAplicacaoVS](ValueSet-agrosus-equipamento-aplicacao.md), [AgroSUSEscolaridadeCS](CodeSystem-agrosus-escolaridade.md), [AgroSUSEscolaridadeVS](ValueSet-agrosus-escolaridade.md), [AgroSUSEstratificacaoRisco](PlanDefinition-AgroSUSEstratificacaoRisco.md), [AgroSUSExamesLaboratoriaisVS](ValueSet-agrosus-exames-laboratoriais.md), [AgroSUSExposicaoCS](CodeSystem-agrosus-exposicao.md), [AgroSUSExposicaoFamiliarCS](CodeSystem-agrosus-exposicao-familiar.md), [AgroSUSFHIR](index.md), [AgroSUSFamiliaresAuxiliamAplicacaoVS](ValueSet-agrosus-familiares-auxiliam-aplicacao.md), [AgroSUSFonteAguaVS](ValueSet-agrosus-fonte-agua.md), [AgroSUSFormacaoResponsavelTecnicoVS](ValueSet-agrosus-formacao-responsavel-tecnico.md), [AgroSUSFrequenciaUsoEPIVS](ValueSet-agrosus-frequencia-uso-epi.md), [AgroSUSHistoricoIntoxicacaoCS](CodeSystem-agrosus-historico-intoxicacao.md), [AgroSUSHorasAplicacaoDiaVS](ValueSet-agrosus-horas-aplicacao-dia.md), [AgroSUSInstituicaoAssistenciaVS](ValueSet-agrosus-instituicao-assistencia.md), [AgroSUSIntoxicacaoLogic](Library-AgroSUSIntoxicacaoLogic.md), [AgroSUSIntoxicacaoPesticida](StructureDefinition-agrosus-intoxicacao-pesticida.md), [AgroSUSIntoxicacaoPesticidaVS](ValueSet-agrosus-intoxicacao-pesticida.md), [AgroSUSLaboratorio](StructureDefinition-agrosus-laboratorio.md), [AgroSUSLaudoLaboratorial](StructureDefinition-agrosus-laudo-laboratorial.md), [AgroSUSLocalArmazenamentoDefensivosVS](ValueSet-agrosus-local-armazenamento-defensivos.md), [AgroSUSMeasureAdesaoPeriodicidade](Measure-AgroSUSMeasureAdesaoPeriodicidade.md), [AgroSUSMeasureAlteradosComConduta](Measure-AgroSUSMeasureAlteradosComConduta.md), [AgroSUSMeasureCoberturaAnamnese](Measure-AgroSUSMeasureCoberturaAnamnese.md), [AgroSUSMeasureCoberturaBasal](Measure-AgroSUSMeasureCoberturaBasal.md), [AgroSUSMeasureCoberturaEPI](Measure-AgroSUSMeasureCoberturaEPI.md), [AgroSUSMesMaiorIntensidadeVS](ValueSet-agrosus-mes-maior-intensidade.md), [AgroSUSMotivoNaoUsoEPIVS](ValueSet-agrosus-motivo-nao-uso-epi.md), [AgroSUSNumeroIntoxicacoesAgudasVS](ValueSet-agrosus-numero-intoxicacoes-agudas.md), [AgroSUSOcupacaoACSVS](ValueSet-agrosus-ocupacao-acs.md), [AgroSUSOcupacaoProfissionalUBSVS](ValueSet-agrosus-ocupacao-profissional-ubs.md), [AgroSUSPatient](StructureDefinition-agrosus-patient.md), [AgroSUSPlanoAcompanhamento](StructureDefinition-agrosus-plano-acompanhamento.md), [AgroSUSPrioridadeAlertaCS](CodeSystem-agrosus-prioridade-alerta.md), [AgroSUSPrioridadeAlertaVS](ValueSet-agrosus-prioridade-alerta.md), [AgroSUSProfissionalUBS](StructureDefinition-agrosus-profissional-ubs.md), [AgroSUSProfissionalUBSRole](StructureDefinition-agrosus-profissional-ubs-role.md), [AgroSUSPropriedadeCS](CodeSystem-agrosus-propriedade.md), [AgroSUSProvenance](StructureDefinition-agrosus-provenance.md), [AgroSUSRastreabilidadeCS](CodeSystem-agrosus-rastreabilidade.md), [AgroSUSResponsavelAplicacaoVS](ValueSet-agrosus-responsavel-aplicacao.md), [AgroSUSResultadoLaboratorial](StructureDefinition-agrosus-resultado-laboratorial.md), [AgroSUSResultadosLaboratoriaisVS](ValueSet-agrosus-resultados-laboratoriais.md), [AgroSUSServerCapabilities](CapabilityStatement-agrosus-server-capabilities.md), [AgroSUSSintomaUltimos30DiasVS](ValueSet-agrosus-sintoma-ultimos-30-dias.md), [AgroSUSSituacaoPosseVS](ValueSet-agrosus-situacao-posse.md), [AgroSUSSolicitacaoExame](StructureDefinition-agrosus-solicitacao-exame.md), [AgroSUSTemasCapacitacaoVS](ValueSet-agrosus-temas-capacitacao.md), [AgroSUSTipoColetaCS](CodeSystem-agrosus-tipo-coleta.md), [AgroSUSTipoColetaVS](ValueSet-agrosus-tipo-coleta.md), [AgroSUSTipoProducaoVS](ValueSet-agrosus-tipo-producao.md), [AgroSUSTransacaoVisita](StructureDefinition-agrosus-transacao-visita.md), [AgroSUSUBS](StructureDefinition-agrosus-ubs.md), [AgroSUSViaExposicaoVS](ValueSet-agrosus-via-exposicao.md) and [AgroSUSVisitaACS](StructureDefinition-agrosus-visita-acs.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.1.0/CodeSystem-v3-ucum.html): [Observation/agrosus-resultado-hematocrito-exemplo](Observation-agrosus-resultado-hematocrito-exemplo.md), [Observation/agrosus-resultado-hemoglobina-exemplo](Observation-agrosus-resultado-hemoglobina-exemplo.md), [Observation/agrosus-resultado-leucocitos-exemplo](Observation-agrosus-resultado-leucocitos-exemplo.md) and [Observation/agrosus-resultado-plaquetas-exemplo](Observation-agrosus-resultado-plaquetas-exemplo.md)


* These codes are excerpted from Digital Imaging and Communications in Medicine (DICOM) Standard, Part 16: Content Mapping Resource, Copyright © 2011 by the National Electrical Manufacturers Association.

* [Audit Event ID](http://terminology.hl7.org/7.1.0/CodeSystem-audit-event-type.html): [AuditEvent/agrosus-auditoria-consulta-dashboard-exemplo](AuditEvent-agrosus-auditoria-consulta-dashboard-exemplo.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Category Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-category.html): [Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-clinical.html): [Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.1.0/CodeSystem-condition-ver-status.html): [Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)
* [Diagnosis Role](http://terminology.hl7.org/7.1.0/CodeSystem-diagnosis-role.html): [Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md)
* [LibraryType](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html): [AgroSUSIntoxicacaoLogic](Library-AgroSUSIntoxicacaoLogic.md)
* [Measure Population Type](http://terminology.hl7.org/7.1.0/CodeSystem-measure-population.html): [AgroSUSMeasureAdesaoPeriodicidade](Measure-AgroSUSMeasureAdesaoPeriodicidade.md), [AgroSUSMeasureAlteradosComConduta](Measure-AgroSUSMeasureAlteradosComConduta.md), [AgroSUSMeasureCoberturaAnamnese](Measure-AgroSUSMeasureCoberturaAnamnese.md), [AgroSUSMeasureCoberturaBasal](Measure-AgroSUSMeasureCoberturaBasal.md) and [AgroSUSMeasureCoberturaEPI](Measure-AgroSUSMeasureCoberturaEPI.md)
* [Measure Scoring](http://terminology.hl7.org/7.1.0/CodeSystem-measure-scoring.html): [AgroSUSMeasureAdesaoPeriodicidade](Measure-AgroSUSMeasureAdesaoPeriodicidade.md), [AgroSUSMeasureAlteradosComConduta](Measure-AgroSUSMeasureAlteradosComConduta.md), [AgroSUSMeasureCoberturaAnamnese](Measure-AgroSUSMeasureCoberturaAnamnese.md), [AgroSUSMeasureCoberturaBasal](Measure-AgroSUSMeasureCoberturaBasal.md) and [AgroSUSMeasureCoberturaEPI](Measure-AgroSUSMeasureCoberturaEPI.md)
* [Observation Category Codes](http://terminology.hl7.org/7.1.0/CodeSystem-observation-category.html): [Observation/agrosus-resultado-hematocrito-exemplo](Observation-agrosus-resultado-hematocrito-exemplo.md), [Observation/agrosus-resultado-hemoglobina-exemplo](Observation-agrosus-resultado-hemoglobina-exemplo.md), [Observation/agrosus-resultado-leucocitos-exemplo](Observation-agrosus-resultado-leucocitos-exemplo.md) and [Observation/agrosus-resultado-plaquetas-exemplo](Observation-agrosus-resultado-plaquetas-exemplo.md)
* [PlanDefinitionType](http://terminology.hl7.org/7.1.0/CodeSystem-plan-definition-type.html): [AgroSUSEstratificacaoRisco](PlanDefinition-AgroSUSEstratificacaoRisco.md)
* [Provenance participant type](http://terminology.hl7.org/7.1.0/CodeSystem-provenance-participant-type.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Provenance/agrosus-provenance-anamnese-exemplo](Provenance-agrosus-provenance-anamnese-exemplo.md) and [Provenance/agrosus-provenance-plano-acompanhamento-exemplo](Provenance-agrosus-provenance-plano-acompanhamento-exemplo.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0074.html): [DiagnosticReport/agrosus-laudo-hemograma-exemplo](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md)
* [identifierType](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0203.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)... Show 6 more, [Patient/agrosus-patient-example](Patient-agrosus-patient-example.md), [Practitioner/agrosus-acs-exemplo](Practitioner-agrosus-acs-exemplo.md), [Practitioner/agrosus-profissional-enfermeiro-exemplo](Practitioner-agrosus-profissional-enfermeiro-exemplo.md), [Practitioner/agrosus-profissional-medico-exemplo](Practitioner-agrosus-profissional-medico-exemplo.md), [Practitioner/agrosus-profissional-tecnico-enfermagem-exemplo](Practitioner-agrosus-profissional-tecnico-enfermagem-exemplo.md) and [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)
* [ActCode](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Encounter/agrosus-atendimento-ubs-avaliacao-exemplo](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md), [Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md) and [Encounter/agrosus-visita-acs-exemplo](Encounter-agrosus-visita-acs-exemplo.md)
* [ActPriority](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActPriority.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Encounter/agrosus-atendimento-ubs-avaliacao-exemplo](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md), [Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md) and [Encounter/agrosus-visita-acs-exemplo](Encounter-agrosus-visita-acs-exemplo.md)
* [ActReason](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActReason.html): [AuditEvent/agrosus-auditoria-consulta-dashboard-exemplo](AuditEvent-agrosus-auditoria-consulta-dashboard-exemplo.md), [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Provenance/agrosus-provenance-anamnese-exemplo](Provenance-agrosus-provenance-anamnese-exemplo.md) and [Provenance/agrosus-provenance-plano-acompanhamento-exemplo](Provenance-agrosus-provenance-plano-acompanhamento-exemplo.md)
* [DataOperation](http://terminology.hl7.org/7.1.0/CodeSystem-v3-DataOperation.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Provenance/agrosus-provenance-anamnese-exemplo](Provenance-agrosus-provenance-anamnese-exemplo.md) and [Provenance/agrosus-provenance-plano-acompanhamento-exemplo](Provenance-agrosus-provenance-plano-acompanhamento-exemplo.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ObservationInterpretation.html): [Observation/agrosus-resultado-hematocrito-exemplo](Observation-agrosus-resultado-hematocrito-exemplo.md), [Observation/agrosus-resultado-hemoglobina-exemplo](Observation-agrosus-resultado-hemoglobina-exemplo.md), [Observation/agrosus-resultado-leucocitos-exemplo](Observation-agrosus-resultado-leucocitos-exemplo.md) and [Observation/agrosus-resultado-plaquetas-exemplo](Observation-agrosus-resultado-plaquetas-exemplo.md)
* [ParticipationType](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ParticipationType.html): [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md), [Encounter/agrosus-atendimento-ubs-avaliacao-exemplo](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md), [Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md) and [Encounter/agrosus-visita-acs-exemplo](Encounter-agrosus-visita-acs-exemplo.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "io.github.jefersonrl.agrosus",
  "meta" : {
    "profile" : ["http://smart.who.int/base/StructureDefinition/SGImplementationGuide"]
  },
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ImplementationGuide/io.github.jefersonrl.agrosus",
  "version" : "0.1.0",
  "name" : "AgroSUSFHIR",
  "title" : "Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T14:46:27+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Guia de Implementação HL7 FHIR do módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "packageId" : "io.github.jefersonrl.agrosus",
  "license" : "CC-BY-SA-3.0-IGO",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7_terminology",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology",
    "version" : "5.5.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_uv_ips",
    "uri" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips",
    "packageId" : "hl7.fhir.uv.ips",
    "version" : "1.1.0"
  },
  {
    "id" : "hl7_fhir_uv_cql",
    "uri" : "http://hl7.org/fhir/uv/cql/ImplementationGuide/hl7.fhir.uv.cql",
    "packageId" : "hl7.fhir.uv.cql",
    "version" : "1.0.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "1.0.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "hl7_fhir_uv_cpg",
    "uri" : "http://hl7.org/fhir/uv/cpg/ImplementationGuide/hl7.fhir.uv.cpg",
    "packageId" : "hl7.fhir.uv.cpg",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_us_cqfmeasures",
    "uri" : "http://hl7.org/fhir/us/cqfmeasures/ImplementationGuide/hl7.fhir.us.cqfmeasures",
    "packageId" : "hl7.fhir.us.cqfmeasures",
    "version" : "5.0.0"
  },
  {
    "id" : "sb",
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.dependsOn.reason",
      "valueMarkdown" : "This IG uses SMART base computable guideline capabilities"
    }],
    "uri" : "http://smart.who.int/base/ImplementationGuide/smart.who.int.base",
    "packageId" : "smart.who.int.base",
    "version" : "0.1.0"
  },
  {
    "id" : "br_gov_saude_br_core_fhir",
    "uri" : "https://br-core.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.br-core.fhir",
    "packageId" : "br.gov.saude.br-core.fhir",
    "version" : "1.0.0"
  },
  {
    "id" : "br_gov_saude_terminologia_fhir",
    "uri" : "https://terminologia.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.terminologia.fhir",
    "packageId" : "br.gov.saude.terminologia.fhir",
    "version" : "1.0.0"
  },
  {
    "id" : "br_gov_saude_ips_fhir",
    "uri" : "https://ips.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.ips.fhir",
    "packageId" : "br.gov.saude.ips.fhir",
    "version" : "1.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://jefersonrl.github.io/AgroSUS-FHIR/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://jefersonrl.github.io/AgroSUS-FHIR/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-agrosus-acs-exemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/agrosus-acs-exemplo"
      },
      "name" : "ACS AgroSUS de exemplo",
      "description" : "Exemplo sintético de Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-AgroSUSMeasureAdesaoPeriodicidade.html"
      }],
      "reference" : {
        "reference" : "Measure/AgroSUSMeasureAdesaoPeriodicidade"
      },
      "name" : "Adesão à periodicidade semestral do monitoramento biológico (AgroSUS)",
      "description" : "Proporção de trabalhadores elegíveis com exame de colinesterase realizado dentro dos últimos 6 meses, conforme a periodicidade mínima da NR-7 item 7.4.2.1.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-acs.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-acs"
      },
      "name" : "Agente Comunitário de Saúde AgroSUS",
      "description" : "Perfil do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PlanDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PlanDefinition-AgroSUSEstratificacaoRisco.html"
      }],
      "reference" : {
        "reference" : "PlanDefinition/AgroSUSEstratificacaoRisco"
      },
      "name" : "AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos",
      "description" : "Workflow de suporte à decisão: classifica o resultado da colinesterase, define a periodicidade do monitoramento biológico e avalia gatilhos de alerta independentes (sintomas, produto sem EPI adequado, histórico de intoxicação). Apoia — não substitui — o julgamento clínico do profissional assistencial da UBS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-armazenamento-defensivos.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-armazenamento-defensivos"
      },
      "name" : "Armazenamento de defensivos agrícolas AgroSUS",
      "description" : "Terminologia dos locais utilizados para armazenamento de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-assistencia-tecnica.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-assistencia-tecnica"
      },
      "name" : "Assistência Técnica AgroSUS",
      "description" : "Códigos relacionados à assistência e à responsabilidade técnica na produção rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-atendimento-ubs.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-atendimento-ubs"
      },
      "name" : "Atendimento Clínico da UBS AgroSUS",
      "description" : "Atendimento realizado na UBS para avaliação, investigação e acompanhamento assistencial do trabalhador rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-avaliacao-boas-praticas.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-avaliacao-boas-praticas"
      },
      "name" : "Avaliação de boas práticas agrícolas AgroSUS",
      "description" : "Terminologia utilizada para avaliar o atendimento aos indicadores de boas práticas agrícolas no formulário AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-categoria-plano-cuidado.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-categoria-plano-cuidado"
      },
      "name" : "Categorias de Plano de Cuidado AgroSUS",
      "description" : "Categorias permitidas para os planos de acompanhamento AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-categoria-plano-cuidado.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-categoria-plano-cuidado"
      },
      "name" : "Categorias de Plano de Cuidado AgroSUS",
      "description" : "Categorias utilizadas para classificar os planos longitudinais de acompanhamento do trabalhador rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-classificacao-toxicologica.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-classificacao-toxicologica"
      },
      "name" : "Classificação Toxicológica de Defensivos Agrícolas",
      "description" : "Categorias toxicológicas permitidas no formulário AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-classificacao-toxicologica.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-classificacao-toxicologica"
      },
      "name" : "Classificação Toxicológica de Defensivos Agrícolas",
      "description" : "Representação FHIR das categorias de classificação toxicológica estabelecidas pela Anvisa.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-AgroSUSMeasureCoberturaAnamnese.html"
      }],
      "reference" : {
        "reference" : "Measure/AgroSUSMeasureCoberturaAnamnese"
      },
      "name" : "Cobertura da anamnese ocupacional AgroSUS",
      "description" : "Proporção de trabalhadores cadastrados com QuestionnaireResponse da anamnese AgroSUS registrada, medindo a implantação do instrumento de triagem ocupacional pelo ACS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-AgroSUSMeasureCoberturaEPI.html"
      }],
      "reference" : {
        "reference" : "Measure/AgroSUSMeasureCoberturaEPI"
      },
      "name" : "Cobertura de uso adequado de EPI (AgroSUS)",
      "description" : "Proporção de trabalhadores que manuseiam defensivos de categoria toxicológica 1 ou 2 com uso adequado de Equipamento de Proteção Individual registrado na anamnese, conforme a NR-31 item 31.8.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-AgroSUSMeasureCoberturaBasal.html"
      }],
      "reference" : {
        "reference" : "Measure/AgroSUSMeasureCoberturaBasal"
      },
      "name" : "Cobertura do exame basal de colinesterase (AgroSUS)",
      "description" : "Proporção de trabalhadores que manuseiam organofosforados/carbamatos com valor basal de colinesterase registrado na admissão, conforme exigido pela NR-7 item 7.4.1.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-condicoes-sintomas.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-condicoes-sintomas"
      },
      "name" : "Condições de saúde e sintomas AgroSUS",
      "description" : "Terminologia dos itens de condições de saúde e sintomas referidos no formulário de anamnese AgroSUS. Os códigos representam respostas do instrumento e não diagnósticos clínicos confirmados.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-condicao-saude-referida.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-condicao-saude-referida"
      },
      "name" : "Condições de saúde referidas",
      "description" : "Condições de saúde preexistentes declaradas pelo trabalhador durante a anamnese.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-destinacao-embalagens-nao-devolvidas.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-destinacao-embalagens-nao-devolvidas"
      },
      "name" : "Destinação de embalagens não devolvidas",
      "description" : "Formas de destinação das embalagens vazias quando não ocorre devolução em local autorizado.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-destinacao-embalagens.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-destinacao-embalagens"
      },
      "name" : "Destinação de embalagens vazias AgroSUS",
      "description" : "Terminologia das formas de destinação de embalagens vazias de defensivos agrícolas quando não são devolvidas em local autorizado.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-dias-aplicacao-mes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-dias-aplicacao-mes"
      },
      "name" : "Dias de aplicação por mês",
      "description" : "Faixas de frequência mensal de aplicação de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-equipamento-aplicacao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-equipamento-aplicacao"
      },
      "name" : "Equipamentos utilizados na aplicação",
      "description" : "Tipos de equipamento utilizados na aplicação de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-escolaridade.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-escolaridade"
      },
      "name" : "Escolaridade AgroSUS",
      "description" : "Categorias permitidas para escolaridade no formulário AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-escolaridade.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-escolaridade"
      },
      "name" : "Escolaridade AgroSUS",
      "description" : "Categorias de escolaridade utilizadas no formulário de anamnese AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-audit-event.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-audit-event"
      },
      "name" : "Evento de Auditoria AgroSUS",
      "description" : "Registro de segurança para rastrear consultas, alterações e outras operações realizadas sobre os dados do AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-exames-laboratoriais.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-exames-laboratoriais"
      },
      "name" : "Exames Laboratoriais AgroSUS",
      "description" : "Exames e painéis laboratoriais previstos para o acompanhamento assistencial dos trabalhadores rurais no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.html"
      }],
      "reference" : {
        "reference" : "Encounter/agrosus-atendimento-ubs-avaliacao-exemplo"
      },
      "name" : "Exemplo de Atendimento Clínico da UBS AgroSUS",
      "description" : "Avaliação clínica fictícia realizada após a visita e anamnese do ACS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.html"
      }],
      "reference" : {
        "reference" : "Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo"
      },
      "name" : "Exemplo de Atendimento para Revisão dos Exames",
      "description" : "Atendimento fictício para avaliação dos resultados laboratoriais e definição do acompanhamento longitudinal.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AuditEvent-agrosus-auditoria-consulta-dashboard-exemplo.html"
      }],
      "reference" : {
        "reference" : "AuditEvent/agrosus-auditoria-consulta-dashboard-exemplo"
      },
      "name" : "Exemplo de Auditoria de Consulta ao Dashboard",
      "description" : "Evento fictício de acesso aos dados do trabalhador por profissional da UBS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-audit-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-agrosus-profissional-enfermeiro-exemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/agrosus-profissional-enfermeiro-exemplo"
      },
      "name" : "Exemplo de Enfermeira da UBS AgroSUS",
      "description" : "Enfermeira fictícia responsável pelo acompanhamento dos trabalhadores rurais.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-agrosus-laboratorio-exemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/agrosus-laboratorio-exemplo"
      },
      "name" : "Exemplo de Laboratório AgroSUS",
      "description" : "Laboratório municipal fictício responsável pela emissão dos resultados.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-agrosus-laudo-hemograma-exemplo.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/agrosus-laudo-hemograma-exemplo"
      },
      "name" : "Exemplo de Laudo de Hemograma AgroSUS",
      "description" : "Laudo fictício que agrupa os resultados individuais do hemograma.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-agrosus-profissional-medico-exemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/agrosus-profissional-medico-exemplo"
      },
      "name" : "Exemplo de Médico da UBS AgroSUS",
      "description" : "Médico fictício da Estratégia de Saúde da Família.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-agrosus-patient-example.html"
      }],
      "reference" : {
        "reference" : "Patient/agrosus-patient-example"
      },
      "name" : "Exemplo de Paciente AgroSUS",
      "description" : "Trabalhadora rural fictícia utilizada para validar o perfil Paciente AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-agrosus-plano-acompanhamento-exemplo.html"
      }],
      "reference" : {
        "reference" : "CarePlan/agrosus-plano-acompanhamento-exemplo"
      },
      "name" : "Exemplo de Plano de Acompanhamento AgroSUS",
      "description" : "Plano fictício para acompanhamento longitudinal de trabalhadora rural com suspeita de intoxicação por pesticida.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-agrosus-provenance-anamnese-exemplo.html"
      }],
      "reference" : {
        "reference" : "Provenance/agrosus-provenance-anamnese-exemplo"
      },
      "name" : "Exemplo de Proveniência da Anamnese AgroSUS",
      "description" : "Registro fictício da autoria da resposta da anamnese pelo ACS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-agrosus-provenance-plano-acompanhamento-exemplo.html"
      }],
      "reference" : {
        "reference" : "Provenance/agrosus-provenance-plano-acompanhamento-exemplo"
      },
      "name" : "Exemplo de Proveniência do Plano de Acompanhamento",
      "description" : "Registro fictício da autoria médica do plano longitudinal AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-agrosus-anamnese-response-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example"
      },
      "name" : "Exemplo de Resposta da Anamnese AgroSUS",
      "description" : "Resposta parcial fictícia da anamnese AgroSUS registrada durante uma visita do ACS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-agrosus-resultado-hematocrito-exemplo.html"
      }],
      "reference" : {
        "reference" : "Observation/agrosus-resultado-hematocrito-exemplo"
      },
      "name" : "Exemplo de Resultado de Hematócrito",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-agrosus-resultado-hemoglobina-exemplo.html"
      }],
      "reference" : {
        "reference" : "Observation/agrosus-resultado-hemoglobina-exemplo"
      },
      "name" : "Exemplo de Resultado de Hemoglobina",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-agrosus-resultado-leucocitos-exemplo.html"
      }],
      "reference" : {
        "reference" : "Observation/agrosus-resultado-leucocitos-exemplo"
      },
      "name" : "Exemplo de Resultado de Leucócitos",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-agrosus-resultado-plaquetas-exemplo.html"
      }],
      "reference" : {
        "reference" : "Observation/agrosus-resultado-plaquetas-exemplo"
      },
      "name" : "Exemplo de Resultado de Plaquetas",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-agrosus-solicitacao-hemograma-exemplo.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/agrosus-solicitacao-hemograma-exemplo"
      },
      "name" : "Exemplo de Solicitação de Hemograma AgroSUS",
      "description" : "Solicitação fictícia de hemograma completo realizada pelo médico da UBS após avaliação clínica.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.html"
      }],
      "reference" : {
        "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo"
      },
      "name" : "Exemplo de Suspeita de Intoxicação por Pesticida",
      "description" : "Suspeita clínica fictícia registrada pelo médico da UBS e mantida em investigação.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-agrosus-transacao-visita-exemplo.html"
      }],
      "reference" : {
        "reference" : "Bundle/agrosus-transacao-visita-exemplo"
      },
      "name" : "Exemplo de Transação da Visita do ACS",
      "description" : "Sincronização atômica e idempotente do paciente, visita, anamnese e proveniência registrados pelo aplicativo do ACS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-transacao-visita"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-agrosus-profissional-tecnico-enfermagem-exemplo.html"
      }],
      "reference" : {
        "reference" : "Practitioner/agrosus-profissional-tecnico-enfermagem-exemplo"
      },
      "name" : "Exemplo de Técnico de Enfermagem da UBS AgroSUS",
      "description" : "Técnico de enfermagem fictício da equipe assistencial da UBS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-agrosus-visita-acs-exemplo.html"
      }],
      "reference" : {
        "reference" : "Encounter/agrosus-visita-acs-exemplo"
      },
      "name" : "Exemplo de Visita do ACS AgroSUS",
      "description" : "Visita fictícia em campo para aplicação inicial da anamnese AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agrosus-profissional-enfermeiro-role-exemplo.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agrosus-profissional-enfermeiro-role-exemplo"
      },
      "name" : "Exemplo de Vínculo da Enfermeira com a UBS",
      "description" : "Vínculo fictício da enfermeira com a UBS responsável pelo acompanhamento AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agrosus-profissional-medico-role-exemplo.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo"
      },
      "name" : "Exemplo de Vínculo do Médico com a UBS",
      "description" : "Vínculo fictício do médico da Estratégia de Saúde da Família com a UBS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agrosus-profissional-tecnico-enfermagem-role-exemplo.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agrosus-profissional-tecnico-enfermagem-role-exemplo"
      },
      "name" : "Exemplo de Vínculo do Técnico de Enfermagem",
      "description" : "Vínculo fictício do técnico de enfermagem com a UBS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-exposicao-familiar.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-exposicao-familiar"
      },
      "name" : "Exposição familiar AgroSUS",
      "description" : "Terminologia para identificar familiares que auxiliam na aplicação de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-familiares-auxiliam-aplicacao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-familiares-auxiliam-aplicacao"
      },
      "name" : "Familiares que auxiliam na aplicação",
      "description" : "Familiares que auxiliam o trabalhador rural na aplicação de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-fonte-agua.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-fonte-agua"
      },
      "name" : "Fonte de Água da Propriedade",
      "description" : "Fontes de água utilizadas na propriedade rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-armazenamento-registros.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-armazenamento-registros"
      },
      "name" : "Formas de armazenamento dos registros",
      "description" : "Formas utilizadas para armazenar os registros das aplicações de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-formacao-responsavel-tecnico.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-formacao-responsavel-tecnico"
      },
      "name" : "Formação do Responsável Técnico",
      "description" : "Formações profissionais previstas para o responsável técnico da produção.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-agrosus-anamnese.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/agrosus-anamnese"
      },
      "name" : "Formulário de Anamnese AgroSUS",
      "description" : "Formulário de anamnese ocupacional e ambiental aplicado pelo Agente Comunitário de Saúde aos pequenos produtores rurais.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-frequencia-uso-epi.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-frequencia-uso-epi"
      },
      "name" : "Frequência de utilização de EPI",
      "description" : "Frequência declarada de utilização de cada equipamento de proteção individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-acs-role.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-acs-role"
      },
      "name" : "Função do ACS no AgroSUS",
      "description" : "Perfil do vínculo do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde com a organização responsável pelo atendimento no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-profissional-ubs-role.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-profissional-ubs-role"
      },
      "name" : "Função do Profissional Assistencial da UBS AgroSUS",
      "description" : "Vínculo funcional do profissional assistencial com a UBS responsável pelo acompanhamento do trabalhador rural no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-historico-intoxicacao.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-historico-intoxicacao"
      },
      "name" : "Histórico de intoxicação AgroSUS",
      "description" : "Terminologia para registrar a quantidade autorreferida de episódios anteriores de intoxicação aguda por defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-horas-aplicacao-dia.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-horas-aplicacao-dia"
      },
      "name" : "Horas de aplicação por dia",
      "description" : "Faixas de duração diária da aplicação de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-instituicao-assistencia.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-instituicao-assistencia"
      },
      "name" : "Instituição de Assistência Técnica",
      "description" : "Instituições que podem prestar assistência técnica ao produtor rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-intoxicacao-pesticida.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-intoxicacao-pesticida"
      },
      "name" : "Intoxicação por pesticidas AgroSUS",
      "description" : "Códigos CID-10 utilizados para representar suspeita ou confirmação clínica de efeito tóxico de pesticidas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-laboratorio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-laboratorio"
      },
      "name" : "Laboratório AgroSUS",
      "description" : "Organização responsável pela realização e emissão de resultados de exames laboratoriais utilizados no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-laudo-laboratorial.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-laudo-laboratorial"
      },
      "name" : "Laudo Laboratorial AgroSUS",
      "description" : "Laudo que agrupa resultados laboratoriais emitidos para o acompanhamento do trabalhador rural no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-local-armazenamento-defensivos.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-local-armazenamento-defensivos"
      },
      "name" : "Local de armazenamento dos defensivos agrícolas",
      "description" : "Locais onde os defensivos agrícolas são armazenados na propriedade.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-armazenamento-epi.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-armazenamento-epi"
      },
      "name" : "Local de armazenamento dos EPIs",
      "description" : "Locais utilizados para o armazenamento dos equipamentos de proteção individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-AgroSUSIntoxicacaoLogic.html"
      }],
      "reference" : {
        "reference" : "Library/AgroSUSIntoxicacaoLogic"
      },
      "name" : "Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)",
      "description" : "Regras de decisão do pathway AgroSUS (humano-legíveis; implementação em CQL prevista para fase L4).\nFundamentadas em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Não há, nessas\nfontes, um escore composto de risco — ver ADR-0002. A lógica combina um indicador biológico\nobjetivo (colinesterase) com gatilhos de alerta discretos e independentes.\n\n1) VALOR BASAL DA COLINESTERASE: obtido no exame admissional, antes do início do manuseio de\n   organofosforados/carbamatos. Se ausente, afastar o trabalhador por 30 dias e realizar o exame\n   (idealmente 2 análises com 7–15 dias de intervalo). Repetir a obtenção a cada 2 anos.\n   Fonte: NR-7 item 7.4.1; Nota Informativa 16/2019, Anexo I item 1 e 3.\n\n2) PERCENTUAL DE INIBIÇÃO: % inibição = (atividade basal − atividade obtida) / atividade basal × 100.\n   Fonte: Nota Informativa 16/2019, Anexo I item 4.\n\n3) CLASSIFICAÇÃO DO RESULTADO:\n   - Colinesterase PLASMÁTICA: até 50% de inibição = Normal; acima de 50% = Alterado (excede o\n     Índice Biológico Máximo Permitido — IBMP).\n   - Colinesterase de SANGUE TOTAL/ERITROCITÁRIA: até 25% de inibição = Normal; acima de 25% =\n     Alterado (excede o IBMP).\n   - PRECAUÇÃO: redução de 20% ou no mínimo 30% (mesmo sem atingir o IBMP) → alerta de atenção,\n     reforçar práticas de proteção (EPI/técnica de aplicação), sem afastamento automático.\n   Fonte: NR-7 Quadro I; Nota Informativa 16/2019, Anexo I item 4 e Quadro 1.\n\n4) PERIODICIDADE DO MONITORAMENTO BIOLÓGICO: no mínimo SEMESTRAL em rotina (podendo ser reduzida\n   por critério do médico coordenador do PCMSO ou negociação coletiva). Gatilhos adicionais,\n   independentes da rotina: exame admissional; retorno ao trabalho após afastamento > 30 dias;\n   mudança de função; sintomático (a qualquer tempo, mediante solicitação médica); após aplicações\n   em surto/bloqueio; retestagem após resultado alterado.\n   Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa 16/2019, Anexo III item 1.1.\n\n5) CONDUTA FRENTE A RESULTADO ALTERADO: afastar o trabalhador do contato com o agrotóxico por 30\n   dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador;\n   repetir o exame após 30 dias; investigar outras causas de depressão enzimática antes de\n   concluir pela exposição ocupacional.\n   Fonte: Nota Informativa 16/2019, Anexo III item 3.\n\n6) CONTRAINDICAÇÃO AO MANUSEIO: trabalhadores com hepatopatia, cardiopatia, pneumopatia,\n   desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou uso de medicamento\n   colinesterase-inibidor não devem manusear organofosforados/carbamatos.\n   Fonte: Nota Informativa 16/2019, Anexo III item 2.2.\n\n7) GATILHOS DE ALERTA INDEPENDENTES (não pontuados, não compõem escore):\n   - Sintoma agudo compatível com intoxicação (Seção 13 da anamnese) → ALERTA crítico.\n   - Manuseio de defensivo de categoria toxicológica 1 ou 2 (AgroSUSClassificacaoToxicologicaVS)\n     sem EPI adequado registrado (Seção 9) → ALERTA crítico.\n   - Histórico de intoxicação aguda prévia (Seção 14) → ALERTA de acompanhamento prioritário.\n   - Colinesterase alterada (regra 3) → ALERTA crítico; colinesterase em precaução → ALERTA de\n     atenção.\n   Conduta comum a qualquer ALERTA: priorizar avaliação clínica na UBS e considerar antecipação do\n   plano de acompanhamento (`AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o\n   julgamento clínico do profissional assistencial.\n\n8) REGISTRO: eventos de exame, afastamento e conduta devem ser mantidos no prontuário/registro\n   individual por, no mínimo, 20 anos após o desligamento do trabalhador.\n   Fonte: NR-7 item 7.4.5.1.\n\nITEM EM ABERTO: não existe, nas fontes L1 adotadas, uma fórmula de escore composto de risco\nocupacional. Ver ADR-0002 — não inferir pesos ou combinação entre os gatilhos acima sem validação\nclínica.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-mes-maior-intensidade.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-mes-maior-intensidade"
      },
      "name" : "Meses de maior intensidade de uso",
      "description" : "Meses do ano com maior intensidade de utilização de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-motivo-nao-uso-epi.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-motivo-nao-uso-epi"
      },
      "name" : "Motivos de não utilização de EPI",
      "description" : "Motivos declarados para a não utilização dos equipamentos de proteção individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-numero-intoxicacoes-agudas.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-numero-intoxicacoes-agudas"
      },
      "name" : "Número de intoxicações agudas anteriores",
      "description" : "Faixas para registro do número autorreferido de episódios anteriores de intoxicação aguda.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-ocupacao-profissional-ubs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-ocupacao-profissional-ubs"
      },
      "name" : "Ocupações dos profissionais assistenciais da UBS",
      "description" : "Ocupações CBO permitidas para profissionais assistenciais que utilizam o dashboard AgroSUS na Unidade Básica de Saúde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-ocupacao-acs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-ocupacao-acs"
      },
      "name" : "Ocupações permitidas para o ACS no AgroSUS",
      "description" : "Ocupações da Classificação Brasileira de Ocupações permitidas para o profissional que aplica a anamnese AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-patient"
      },
      "name" : "Paciente AgroSUS",
      "description" : "Perfil do pequeno produtor rural acompanhado pelo módulo AgroSUS no âmbito da Atenção Primária à Saúde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-plano-acompanhamento.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-plano-acompanhamento"
      },
      "name" : "Plano de Acompanhamento AgroSUS",
      "description" : "Plano longitudinal definido pela equipe assistencial da UBS para acompanhamento clínico e ocupacional do trabalhador rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-atividade-agricola.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-atividade-agricola"
      },
      "name" : "Principal Atividade Agrícola",
      "description" : "Principais atividades desenvolvidas na propriedade rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-prioridade-alerta.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-prioridade-alerta"
      },
      "name" : "Prioridade de Alerta AgroSUS",
      "description" : "Níveis de prioridade permitidos para os alertas da lógica de decisão do AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-prioridade-alerta.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-prioridade-alerta"
      },
      "name" : "Prioridade de Alerta AgroSUS",
      "description" : "Níveis de prioridade clínica para os alertas gerados pela lógica de decisão do AgroSUS (colinesterase alterada, sintoma agudo, produto categoria 1/2 sem EPI, histórico de intoxicação).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-profissional-ubs.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-profissional-ubs"
      },
      "name" : "Profissional Assistencial da UBS AgroSUS",
      "description" : "Profissional da Unidade Básica de Saúde responsável pela avaliação clínica, acompanhamento ou apoio assistencial ao trabalhador rural no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-AgroSUSMeasureAlteradosComConduta.html"
      }],
      "reference" : {
        "reference" : "Measure/AgroSUSMeasureAlteradosComConduta"
      },
      "name" : "Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS)",
      "description" : "Proporção de resultados de colinesterase acima do Índice Biológico Máximo Permitido (IBMP) com afastamento ou conduta clínica registrada, conforme a Nota Informativa nº 16/2019, Anexo III item 3.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-provenance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-provenance"
      },
      "name" : "Proveniência dos Registros AgroSUS",
      "description" : "Registro de autoria, criação, atualização e origem dos recursos clínicos e assistenciais do AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-rastreabilidade.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-rastreabilidade"
      },
      "name" : "Rastreabilidade das aplicações AgroSUS",
      "description" : "Terminologia utilizada para identificar onde são armazenados os registros das aplicações de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-agrosus-server-capabilities.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/agrosus-server-capabilities"
      },
      "name" : "Requisitos de capacidade do servidor AgroSUS",
      "description" : "Contrato mínimo da API FHIR R4 do AgroSUS para o aplicativo do ACS, o dashboard da UBS e os sistemas laboratoriais.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-responsavel-aplicacao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-responsavel-aplicacao"
      },
      "name" : "Responsável pela aplicação",
      "description" : "Pessoas ou organizações que realizam a aplicação dos defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-anamnese-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-anamnese-response"
      },
      "name" : "Resposta da Anamnese AgroSUS",
      "description" : "Perfil da resposta ao formulário de anamnese ocupacional e ambiental AgroSUS aplicado pelo Agente Comunitário de Saúde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-avaliacao-boas-praticas.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-avaliacao-boas-praticas"
      },
      "name" : "Respostas dos indicadores de boas práticas",
      "description" : "Respostas permitidas para cada indicador de boa prática agrícola.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-resultado-laboratorial.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-resultado-laboratorial"
      },
      "name" : "Resultado Laboratorial AgroSUS",
      "description" : "Resultado individual de exame ou biomarcador laboratorial utilizado no acompanhamento do trabalhador rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-resultados-laboratoriais.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-resultados-laboratoriais"
      },
      "name" : "Resultados Laboratoriais AgroSUS",
      "description" : "Biomarcadores laboratoriais utilizados no acompanhamento assistencial dos trabalhadores rurais no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-sintoma-ultimos-30-dias.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-sintoma-ultimos-30-dias"
      },
      "name" : "Sinais e sintomas dos últimos 30 dias",
      "description" : "Sinais e sintomas investigados pelo formulário AgroSUS, sem significado diagnóstico isolado.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-situacao-posse.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-situacao-posse"
      },
      "name" : "Situação de Posse da Terra",
      "description" : "Situações de posse da propriedade rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-solicitacao-exame.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-solicitacao-exame"
      },
      "name" : "Solicitação de Exame AgroSUS",
      "description" : "Solicitação de exame laboratorial realizada por profissional assistencial da UBS para acompanhamento do trabalhador rural no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-intoxicacao-pesticida.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-intoxicacao-pesticida"
      },
      "name" : "Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS",
      "description" : "Condição clínica registrada por profissional assistencial para representar suspeita, confirmação ou descarte de intoxicação por pesticidas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-temas-capacitacao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-temas-capacitacao"
      },
      "name" : "Temas de Capacitação AgroSUS",
      "description" : "Temas que podem ser selecionados no registro de capacitação do trabalhador rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-capacitacao.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-capacitacao"
      },
      "name" : "Temas de Capacitação AgroSUS",
      "description" : "Temas abordados em capacitações sobre o uso seguro de defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-propriedade.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-propriedade"
      },
      "name" : "Terminologia da Propriedade Rural AgroSUS",
      "description" : "Códigos utilizados para caracterizar propriedades rurais no formulário AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-epi.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-epi"
      },
      "name" : "Terminologia de equipamentos de proteção individual AgroSUS",
      "description" : "Terminologia para frequência de uso, armazenamento e motivos de não utilização dos equipamentos de proteção individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-exposicao.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-exposicao"
      },
      "name" : "Terminologia de exposição ocupacional AgroSUS",
      "description" : "Terminologia das características de frequência e forma de exposição aos defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-tipo-producao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-tipo-producao"
      },
      "name" : "Tipo de Produção Agrícola",
      "description" : "Tipos de produção utilizados na propriedade rural.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-tipo-coleta.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-tipo-coleta"
      },
      "name" : "Tipos de Coleta AgroSUS",
      "description" : "Modalidades permitidas para aplicação do formulário AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-agrosus-tipo-coleta.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/agrosus-tipo-coleta"
      },
      "name" : "Tipos de Coleta AgroSUS",
      "description" : "Modalidades de aplicação do formulário de anamnese ocupacional e ambiental do AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-transacao-visita.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-transacao-visita"
      },
      "name" : "Transação da Visita do ACS AgroSUS",
      "description" : "Bundle transacional e idempotente utilizado pelo aplicativo do ACS para sincronizar o paciente, a visita, a resposta da anamnese e sua proveniência em uma única operação atômica.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-agrosus-ubs-exemplo.html"
      }],
      "reference" : {
        "reference" : "Organization/agrosus-ubs-exemplo"
      },
      "name" : "UBS AgroSUS de exemplo",
      "description" : "Exemplo sintético de Unidade Básica de Saúde responsável pelo acompanhamento no AgroSUS.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-ubs.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-ubs"
      },
      "name" : "Unidade Básica de Saúde AgroSUS",
      "description" : "Perfil da Unidade Básica de Saúde responsável pelo acompanhamento do trabalhador rural no AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-agrosus-via-exposicao.html"
      }],
      "reference" : {
        "reference" : "ValueSet/agrosus-via-exposicao"
      },
      "name" : "Vias de exposição",
      "description" : "Vias mais comuns de exposição aos defensivos agrícolas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agrosus-visita-acs.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agrosus-visita-acs"
      },
      "name" : "Visita do ACS AgroSUS",
      "description" : "Visita ou atendimento em campo no qual o Agente Comunitário de Saúde aplica ou atualiza a anamnese AgroSUS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-agrosus-acs-role-exemplo.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agrosus-acs-role-exemplo"
      },
      "name" : "Vínculo profissional do ACS AgroSUS",
      "description" : "Exemplo sintético do vínculo de um Agente Comunitário de Saúde com uma Unidade Básica de Saúde.",
      "exampleCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Início",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-interventions.html"
        }],
        "nameUrl" : "l2-interventions.html",
        "title" : "1. Intervenções e Recomendações",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-personas.html"
        }],
        "nameUrl" : "l2-personas.html",
        "title" : "2. Personas Genéricas",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-user-scenarios.html"
        }],
        "nameUrl" : "l2-user-scenarios.html",
        "title" : "3. Cenários de Uso",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-business-process.html"
        }],
        "nameUrl" : "l2-business-process.html",
        "title" : "4. Processos de Negócio e Workflows",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-data-dictionary.html"
        }],
        "nameUrl" : "l2-data-dictionary.html",
        "title" : "5. Elementos de Dados (Dicionário)",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-decision-logic.html"
        }],
        "nameUrl" : "l2-decision-logic.html",
        "title" : "6. Lógica de Suporte à Decisão",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-indicators.html"
        }],
        "nameUrl" : "l2-indicators.html",
        "title" : "7. Indicadores de Programa",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-requirements.html"
        }],
        "nameUrl" : "l2-requirements.html",
        "title" : "8. Requisitos Funcionais e Não-Funcionais",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "l2-test-scenarios.html"
        }],
        "nameUrl" : "l2-test-scenarios.html",
        "title" : "9. Cenários de Teste",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
