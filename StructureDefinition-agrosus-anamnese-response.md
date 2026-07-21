# Resposta da Anamnese AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resposta da Anamnese AgroSUS**

## Resource Profile: Resposta da Anamnese AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSAnamneseResponse |

 
Perfil da resposta ao formulário de anamnese ocupacional e ambiental AgroSUS aplicado pelo Agente Comunitário de Saúde. 

**Usos:**

* Usa este Perfil: [Transação da Visita do ACS AgroSUS](StructureDefinition-agrosus-transacao-visita.md)
* Refere a este Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md) and [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md)
* Exemplos para este Perfil: [QuestionnaireResponse/agrosus-anamnese-response-example](QuestionnaireResponse-agrosus-anamnese-response-example.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-anamnese-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-anamnese-response.csv), [Excel](StructureDefinition-agrosus-anamnese-response.xlsx), [Schematron](StructureDefinition-agrosus-anamnese-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-anamnese-response",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response",
  "version" : "0.1.0",
  "name" : "AgroSUSAnamneseResponse",
  "title" : "Resposta da Anamnese AgroSUS",
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
  "description" : "Perfil da resposta ao formulário de anamnese ocupacional e ambiental AgroSUS aplicado pelo Agente Comunitário de Saúde.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.identifier",
      "path" : "QuestionnaireResponse.identifier",
      "short" : "Identificador único da aplicação da anamnese",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.identifier.system",
      "path" : "QuestionnaireResponse.identifier.system",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.identifier.value",
      "path" : "QuestionnaireResponse.identifier.value",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "https://jefersonrl.github.io/AgroSUS-FHIR/Questionnaire/agrosus-anamnese",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "Situação de preenchimento da anamnese",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "short" : "Trabalhador rural ao qual a anamnese se refere",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "short" : "Visita do ACS em que a anamnese foi aplicada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "short" : "Data e hora do registro das respostas",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "short" : "Vínculo profissional do ACS responsável pelo registro",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.source",
      "path" : "QuestionnaireResponse.source",
      "short" : "Trabalhador ou responsável que forneceu as informações",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "short" : "Respostas correspondentes aos itens da anamnese AgroSUS",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
