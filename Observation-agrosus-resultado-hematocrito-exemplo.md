# Exemplo de Resultado de Hematócrito - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Resultado de Hematócrito**

## Example Observation: Exemplo de Resultado de Hematócrito

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2026-000001-HT

**basedOn**: [ServiceRequest CBC (hemogram) Sg Auto](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Hematócrito

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2026-07-25 08:15:00-0300

**issued**: 2026-07-25 12:00:00-0300

**performer**: [Organization Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 39.5 % (Detalhes: UCUM código% = '%')

**interpretation**: Normal

**note**: 

> 

Faixa de referência informada pelo laboratório: 36,0% a 46,0%.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-hematocrito-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2026-000001-HT"
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
      "code" : "4544-3",
      "display" : "Hct Fr Sg Auto"
    }],
    "text" : "Hematócrito"
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
    "value" : 39.5,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Faixa de referência informada pelo laboratório: 36,0% a 46,0%."
  }]
}

```
