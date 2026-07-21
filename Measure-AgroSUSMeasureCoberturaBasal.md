# Cobertura do exame basal de colinesterase (AgroSUS) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cobertura do exame basal de colinesterase (AgroSUS)**

## Measure: Cobertura do exame basal de colinesterase (AgroSUS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaBasal | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMeasureCoberturaBasal |

 
Proporção de trabalhadores que manuseiam organofosforados/carbamatos com valor basal de colinesterase registrado na admissão, conforme exigido pela NR-7 item 7.4.1. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: AgroSUSMeasureCoberturaBasal
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Cobertura do exame basal de colinesterase (AgroSUS)
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Proporção de trabalhadores que manuseiam organofosforados/carbamatos com valor basal de colinesterase registrado na admissão, conforme exigido pela NR-7 item 7.4.1.
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
  * ?: **Description**:Trabalhadores cadastrados que manuseiam organofosforados/carbamatos
* Knowledge Artifact Metadata: Numerator
  * ?: **Description**:Trabalhadores com valor basal de colinesterase registrado na admissão
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "AgroSUSMeasureCoberturaBasal",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaBasal",
  "version" : "0.1.0",
  "name" : "AgroSUSMeasureCoberturaBasal",
  "title" : "Cobertura do exame basal de colinesterase (AgroSUS)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-21T13:39:22+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Proporção de trabalhadores que manuseiam organofosforados/carbamatos com valor basal de colinesterase registrado na admissão, conforme exigido pela NR-7 item 7.4.1.",
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
      "description" : "Trabalhadores cadastrados que manuseiam organofosforados/carbamatos",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-manuseiam-organofosforados"
      }
    },
    {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator"
        }]
      },
      "description" : "Trabalhadores com valor basal de colinesterase registrado na admissão",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-com-valor-basal-registrado"
      }
    }]
  }]
}

```
