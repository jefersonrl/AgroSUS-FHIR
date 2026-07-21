# Adesão à periodicidade semestral do monitoramento biológico (AgroSUS) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adesão à periodicidade semestral do monitoramento biológico (AgroSUS)**

## Measure: Adesão à periodicidade semestral do monitoramento biológico (AgroSUS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureAdesaoPeriodicidade | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMeasureAdesaoPeriodicidade |

 
Proporção de trabalhadores elegíveis com exame de colinesterase realizado dentro dos últimos 6 meses, conforme a periodicidade mínima da NR-7 item 7.4.2.1. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: AgroSUSMeasureAdesaoPeriodicidade
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Adesão à periodicidade semestral do monitoramento biológico (AgroSUS)
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Proporção de trabalhadores elegíveis com exame de colinesterase realizado dentro dos últimos 6 meses, conforme a periodicidade mínima da NR-7 item 7.4.2.1.
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
  * ?: **Description**:Trabalhadores elegíveis ao monitoramento biológico
* Knowledge Artifact Metadata: Numerator
  * ?: **Description**:Trabalhadores com exame de colinesterase nos últimos 6 meses
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "AgroSUSMeasureAdesaoPeriodicidade",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureAdesaoPeriodicidade",
  "version" : "0.1.0",
  "name" : "AgroSUSMeasureAdesaoPeriodicidade",
  "title" : "Adesão à periodicidade semestral do monitoramento biológico (AgroSUS)",
  "status" : "active",
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
  "description" : "Proporção de trabalhadores elegíveis com exame de colinesterase realizado dentro dos últimos 6 meses, conforme a periodicidade mínima da NR-7 item 7.4.2.1.",
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
      "description" : "Trabalhadores elegíveis ao monitoramento biológico",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-elegiveis-monitoramento"
      }
    },
    {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator"
        }]
      },
      "description" : "Trabalhadores com exame de colinesterase nos últimos 6 meses",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-exame-ultimos-6-meses"
      }
    }]
  }]
}

```
