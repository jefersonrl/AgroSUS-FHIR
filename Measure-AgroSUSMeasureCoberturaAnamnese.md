# Cobertura da anamnese ocupacional AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cobertura da anamnese ocupacional AgroSUS**

## Measure: Cobertura da anamnese ocupacional AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaAnamnese | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMeasureCoberturaAnamnese |

 
Proporção de trabalhadores cadastrados com QuestionnaireResponse da anamnese AgroSUS registrada, medindo a implantação do instrumento de triagem ocupacional pelo ACS. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: AgroSUSMeasureCoberturaAnamnese
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Cobertura da anamnese ocupacional AgroSUS
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Proporção de trabalhadores cadastrados com QuestionnaireResponse da anamnese AgroSUS registrada, medindo a implantação do instrumento de triagem ocupacional pelo ACS.
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
  * ?: **Description**:Trabalhadores cadastrados no AgroSUS
* Knowledge Artifact Metadata: Numerator
  * ?: **Description**:Trabalhadores com anamnese AgroSUS registrada
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "AgroSUSMeasureCoberturaAnamnese",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureCoberturaAnamnese",
  "version" : "0.1.0",
  "name" : "AgroSUSMeasureCoberturaAnamnese",
  "title" : "Cobertura da anamnese ocupacional AgroSUS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-21T16:38:11+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Proporção de trabalhadores cadastrados com QuestionnaireResponse da anamnese AgroSUS registrada, medindo a implantação do instrumento de triagem ocupacional pelo ACS.",
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
      "description" : "Trabalhadores cadastrados no AgroSUS",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-cadastrados"
      }
    },
    {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator"
        }]
      },
      "description" : "Trabalhadores com anamnese AgroSUS registrada",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "trabalhadores-com-anamnese-registrada"
      }
    }]
  }]
}

```
