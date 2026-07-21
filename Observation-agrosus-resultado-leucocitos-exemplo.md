# Exemplo de Resultado de Leucócitos - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Resultado de Leucócitos**

## Example Observation: Exemplo de Resultado de Leucócitos

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2026-000001-LEU

**basedOn**: [ServiceRequest CBC panel - Blood by Automated count](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Leucócitos

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2026-07-25 08:15:00-0300

**issued**: 2026-07-25 12:00:00-0300

**performer**: [Organization Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 6.8 10³/µL (Detalhes: UCUM código10*3/uL = '10*3/uL')

**interpretation**: Normal

**note**: 

> 

Faixa de referência informada pelo laboratório: 4,0 a 10,0 × 10³/µL.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-leucocitos-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2026-000001-LEU"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-hemograma-exemplo"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "6690-2",
      "display" : "Leukocytes [#/volume] in Blood by Automated count"
    }],
    "text" : "Leucócitos"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "effectiveDateTime" : "2026-07-25T08:15:00-03:00",
  "issued" : "2026-07-25T12:00:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo"
  }],
  "valueQuantity" : {
    "value" : 6.8,
    "unit" : "10³/µL",
    "system" : "http://unitsofmeasure.org",
    "code" : "10*3/uL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Faixa de referência informada pelo laboratório: 4,0 a 10,0 × 10³/µL."
  }]
}

```
