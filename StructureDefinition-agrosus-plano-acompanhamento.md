# Plano de Acompanhamento AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plano de Acompanhamento AgroSUS**

## Resource Profile: Plano de Acompanhamento AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSPlanoAcompanhamento |

 
Plano longitudinal definido pela equipe assistencial da UBS para acompanhamento clínico e ocupacional do trabalhador rural. 

**Usos:**

* Refere a este Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md) and [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md)
* Exemplos para este Perfil: [CarePlan/agrosus-plano-acompanhamento-exemplo](CarePlan-agrosus-plano-acompanhamento-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-plano-acompanhamento.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-plano-acompanhamento.csv), [Excel](StructureDefinition-agrosus-plano-acompanhamento.xlsx), [Schematron](StructureDefinition-agrosus-plano-acompanhamento.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-plano-acompanhamento",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento",
  "version" : "0.1.0",
  "name" : "AgroSUSPlanoAcompanhamento",
  "title" : "Plano de Acompanhamento AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T15:31:26+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Plano longitudinal definido pela equipe assistencial da UBS para acompanhamento clínico e ocupacional do trabalhador rural.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "short" : "Identificador único do plano de acompanhamento",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.identifier.system",
      "path" : "CarePlan.identifier.system",
      "min" : 1
    },
    {
      "id" : "CarePlan.identifier.value",
      "path" : "CarePlan.identifier.value",
      "min" : 1
    },
    {
      "id" : "CarePlan.instantiatesUri",
      "path" : "CarePlan.instantiatesUri",
      "short" : "Norma ou protocolo utilizado como referência para o plano",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "short" : "Situação atual do plano",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "short" : "Intenção assistencial do plano",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "short" : "Categoria do acompanhamento longitudinal",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-categoria-plano-cuidado"
      }
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "short" : "Título resumido do plano",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Descrição do acompanhamento definido",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "short" : "Atendimento no qual o plano foi definido ou revisado",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "short" : "Período de vigência do plano",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Data de criação do plano",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "short" : "Profissional responsável pela definição da periodicidade",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "short" : "Condição clínica acompanhada pelo plano",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "short" : "Anamneses, solicitações e resultados considerados no planejamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.outcomeCodeableConcept",
      "path" : "CarePlan.activity.outcomeCodeableConcept",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.progress",
      "path" : "CarePlan.activity.progress",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.kind",
      "path" : "CarePlan.activity.detail.kind",
      "min" : 1,
      "patternCode" : "ServiceRequest",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
          "code" : "0301",
          "display" : "Consultas / Atendimentos / Acompanhamentos"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.reasonReference",
      "path" : "CarePlan.activity.detail.reasonReference",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "short" : "Situação da atividade de acompanhamento",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "short" : "Data, período ou frequência definida pelo profissional",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.performer",
      "path" : "CarePlan.activity.detail.performer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.description",
      "path" : "CarePlan.activity.detail.description",
      "short" : "Descrição da avaliação que deverá ser realizada",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "short" : "Justificativa da periodicidade e orientações adicionais",
      "mustSupport" : true
    }]
  }
}

```
