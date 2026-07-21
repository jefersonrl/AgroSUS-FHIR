# Resultado Laboratorial AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Resultado Laboratorial AgroSUS**

## Resource Profile: Resultado Laboratorial AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSResultadoLaboratorial |

 
Resultado individual de exame ou biomarcador laboratorial utilizado no acompanhamento do trabalhador rural. 

**Usos:**

* Refere a este Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md), [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md)... Show 2 more, [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) and [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)
* Exemplos para este Perfil: [Observation/agrosus-resultado-hematocrito-exemplo](Observation-agrosus-resultado-hematocrito-exemplo.md), [Observation/agrosus-resultado-hemoglobina-exemplo](Observation-agrosus-resultado-hemoglobina-exemplo.md), [Observation/agrosus-resultado-leucocitos-exemplo](Observation-agrosus-resultado-leucocitos-exemplo.md) and [Observation/agrosus-resultado-plaquetas-exemplo](Observation-agrosus-resultado-plaquetas-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-resultado-laboratorial.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-resultado-laboratorial.csv), [Excel](StructureDefinition-agrosus-resultado-laboratorial.xlsx), [Schematron](StructureDefinition-agrosus-resultado-laboratorial.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-resultado-laboratorial",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial",
  "version" : "0.1.0",
  "name" : "AgroSUSResultadoLaboratorial",
  "title" : "Resultado Laboratorial AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T03:34:20+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Resultado individual de exame ou biomarcador laboratorial utilizado no acompanhamento do trabalhador rural.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identificador único do resultado laboratorial",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.identifier.system",
      "path" : "Observation.identifier.system",
      "min" : 1
    },
    {
      "id" : "Observation.identifier.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "short" : "Solicitação que originou o resultado",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Situação do resultado laboratorial",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Categoria laboratorial da observação",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Biomarcador ou analito medido",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-resultados-laboratoriais"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Trabalhador rural ao qual o resultado pertence",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Data e hora clinicamente relevante do resultado",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "Data e hora de liberação do resultado",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Laboratório responsável pelo resultado",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Valor do resultado laboratorial",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "Motivo da ausência do valor, quando aplicável",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Interpretação laboratorial do resultado",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Observações do laboratório",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Amostra biológica utilizada, quando informada",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "short" : "Intervalo de referência informado pelo laboratório",
      "mustSupport" : true
    }]
  }
}

```
