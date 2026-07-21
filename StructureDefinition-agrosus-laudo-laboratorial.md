# Laudo Laboratorial AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laudo Laboratorial AgroSUS**

## Resource Profile: Laudo Laboratorial AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSLaudoLaboratorial |

 
Laudo que agrupa resultados laboratoriais emitidos para o acompanhamento do trabalhador rural no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md), [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) and [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)
* Exemplos para este Perfil: [DiagnosticReport/agrosus-laudo-hemograma-exemplo](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-laudo-laboratorial.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-laudo-laboratorial.csv), [Excel](StructureDefinition-agrosus-laudo-laboratorial.xlsx), [Schematron](StructureDefinition-agrosus-laudo-laboratorial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-laudo-laboratorial",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial",
  "version" : "0.1.0",
  "name" : "AgroSUSLaudoLaboratorial",
  "title" : "Laudo Laboratorial AgroSUS",
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
  "description" : "Laudo que agrupa resultados laboratoriais emitidos para o acompanhamento do trabalhador rural no AgroSUS.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Identificador único do laudo laboratorial",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.identifier.value",
      "path" : "DiagnosticReport.identifier.value",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "Solicitação de exame atendida pelo laudo",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "Situação atual do laudo",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "short" : "Categoria laboratorial do laudo",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Exame ou painel representado pelo laudo",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-exames-laboratoriais"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "Trabalhador rural ao qual o laudo pertence",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "short" : "Data ou período clinicamente relevante",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "short" : "Data e hora de liberação do laudo",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "short" : "Laboratório responsável pela emissão",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "short" : "Profissional responsável pela interpretação laboratorial",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "short" : "Amostras biológicas utilizadas, quando informadas",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "short" : "Resultados individuais incluídos no laudo",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Conclusão textual emitida pelo laboratório",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "short" : "Conclusão codificada, quando disponível",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "short" : "Documento original emitido pelo laboratório",
      "mustSupport" : true
    }]
  }
}

```
