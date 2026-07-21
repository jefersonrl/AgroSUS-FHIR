# Transação da Visita do ACS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transação da Visita do ACS AgroSUS**

## Resource Profile: Transação da Visita do ACS AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-transacao-visita | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSTransacaoVisita |

 
Bundle transacional e idempotente utilizado pelo aplicativo do ACS para sincronizar o paciente, a visita, a resposta da anamnese e sua proveniência em uma única operação atômica. 

**Usos:**

* Exemplos para este Perfil: [Bundle/agrosus-transacao-visita-exemplo](Bundle-agrosus-transacao-visita-exemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-transacao-visita.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-transacao-visita.csv), [Excel](StructureDefinition-agrosus-transacao-visita.xlsx), [Schematron](StructureDefinition-agrosus-transacao-visita.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-transacao-visita",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-transacao-visita",
  "version" : "0.1.0",
  "name" : "AgroSUSTransacaoVisita",
  "title" : "Transação da Visita do ACS AgroSUS",
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
  "description" : "Bundle transacional e idempotente utilizado pelo aplicativo do ACS para sincronizar o paciente, a visita, a resposta da anamnese e sua proveniência em uma única operação atômica.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier.system",
      "path" : "Bundle.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier.value",
      "path" : "Bundle.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "max" : "0"
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 4,
      "max" : "4",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.search",
      "path" : "Bundle.entry.search",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    },
    {
      "id" : "Bundle.entry.request.url",
      "path" : "Bundle.entry.request.url",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:paciente.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:visita",
      "path" : "Bundle.entry",
      "sliceName" : "visita",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:visita.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs"]
      }]
    },
    {
      "id" : "Bundle.entry:anamnese",
      "path" : "Bundle.entry",
      "sliceName" : "anamnese",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:anamnese.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response"]
      }]
    },
    {
      "id" : "Bundle.entry:proveniencia",
      "path" : "Bundle.entry",
      "sliceName" : "proveniencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:proveniencia.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Provenance",
        "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance"]
      }]
    },
    {
      "id" : "Bundle.signature",
      "path" : "Bundle.signature",
      "mustSupport" : true
    }]
  }
}

```
