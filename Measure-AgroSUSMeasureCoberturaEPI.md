# Cobertura de uso adequado de EPI (AgroSUS) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cobertura de uso adequado de EPI (AgroSUS)**

## Measure: Cobertura de uso adequado de EPI (AgroSUS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaEPI | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMeasureCoberturaEPI |

 
Proporção de trabalhadores que manuseiam defensivos de categoria toxicológica 1 ou 2 com uso adequado de Equipamento de Proteção Individual registrado na anamnese, conforme a NR-31 item 31.8. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: AgroSUSMeasureCoberturaEPI
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Cobertura de uso adequado de EPI (AgroSUS)
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Proporção de trabalhadores que manuseiam defensivos de categoria toxicológica 1 ou 2 com uso adequado de Equipamento de Proteção Individual registrado na anamnese, conforme a NR-31 item 31.8.
* Knowledge Artifact Metadata: Measure Steward
  * ?: Fatec Ferraz de Vasconcelos
* Knowledge Artifact Metadata: Steward Contact Details
  * ?: Fatec Ferraz de Vasconcelos:[https://www.fatecferraz.edu.br](https://www.fatecferraz.edu.br)
* Knowledge Artifact Metadata: Measure Metadata
* Knowledge Artifact Metadata: Version Number
  * ?: 0.1.0
* Knowledge Artifact Metadata: Measure Scoring
  * ?: Proportion
* Knowledge Artifact Metadata: Measure Population Criteria
* Knowledge Artifact Metadata: Denominator
  * ?: **Description**:Trabalhadores que manuseiam defensivos categoria toxicológica 1 ou 2
* Knowledge Artifact Metadata: Numerator
  * ?: **Description**:Trabalhadores com uso de EPI adequado registrado
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "AgroSUSMeasureCoberturaEPI",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaEPI",
  "version" : "0.1.0",
  "name" : "AgroSUSMeasureCoberturaEPI",
  "title" : "Cobertura de uso adequado de EPI (AgroSUS)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-21T13:58:44+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Proporção de trabalhadores que manuseiam defensivos de categoria toxicológica 1 ou 2 com uso adequado de Equipamento de Proteção Individual registrado na anamnese, conforme a NR-31 item 31.8.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "scoring" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
      "code" : "proportion"
    }]
  },
  "group" : [{
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "denominator"
        }]
      },
      "description" : "Trabalhadores que manuseiam defensivos categoria toxicológica 1 ou 2",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-categoria-1-2"
      }
    },
    {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator"
        }]
      },
      "description" : "Trabalhadores com uso de EPI adequado registrado",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-epi-adequado"
      }
    }]
  }]
}

```
