# Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS)**

## Measure: Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureAlteradosComConduta | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMeasureAlteradosComConduta |

 
Proporção de resultados de colinesterase acima do Índice Biológico Máximo Permitido (IBMP) com afastamento ou conduta clínica registrada, conforme a Nota Informativa nº 16/2019, Anexo III item 3. 

* Knowledge Artifact Metadata: Name (machine-readable)
  * ?: AgroSUSMeasureAlteradosComConduta
* Knowledge Artifact Metadata: Title (human-readable)
  * ?: Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS)
* Knowledge Artifact Metadata: Status
  * ?: Active
* Knowledge Artifact Metadata: Experimental
  * ?: true
* Knowledge Artifact Metadata: Description
  * ?: Proporção de resultados de colinesterase acima do Índice Biológico Máximo Permitido (IBMP) com afastamento ou conduta clínica registrada, conforme a Nota Informativa nº 16/2019, Anexo III item 3.
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
  * ?: **Description**:Resultados de colinesterase classificados como Alterado
* Knowledge Artifact Metadata: Numerator
  * ?: **Description**:Resultados alterados com conduta registrada (CarePlan ou Provenance)
* Knowledge Artifact Metadata: Generated using version 0.4.6 of the sample-content-ig Liquid templates



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "AgroSUSMeasureAlteradosComConduta",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Measure/AgroSUSMeasureAlteradosComConduta",
  "version" : "0.1.0",
  "name" : "AgroSUSMeasureAlteradosComConduta",
  "title" : "Proporção de resultados alterados de colinesterase com conduta registrada (AgroSUS)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-21T16:19:05+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Proporção de resultados de colinesterase acima do Índice Biológico Máximo Permitido (IBMP) com afastamento ou conduta clínica registrada, conforme a Nota Informativa nº 16/2019, Anexo III item 3.",
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
      "description" : "Resultados de colinesterase classificados como Alterado",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "resultados-colinesterase-alterados"
      }
    },
    {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/measure-population",
          "code" : "numerator"
        }]
      },
      "description" : "Resultados alterados com conduta registrada (CarePlan ou Provenance)",
      "criteria" : {
        "language" : "text/fhirpath",
        "expression" : "resultados-alterados-com-conduta-registrada"
      }
    }]
  }]
}

```
