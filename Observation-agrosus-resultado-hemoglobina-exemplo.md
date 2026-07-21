# Exemplo de Resultado de Hemoglobina - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Resultado de Hemoglobina**

## Example Observation: Exemplo de Resultado de Hemoglobina

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2026-000001-HB

**basedOn**: [ServiceRequest CBC (hemogram) Sg Auto](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobina

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2026-07-25 08:15:00-0300

**issued**: 2026-07-25 12:00:00-0300

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 13.2 g/dL (Detalhes: UCUM códigog/dL = 'g/dL')

**interpretation**: Normal

**note**: 

> 

Faixa de referência informada pelo laboratório: 12,0 a 16,0 g/dL.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-hemoglobina-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2026-000001-HB"
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
      "code" : "718-7",
      "display" : "Hgb Sg-mCnc"
    }],
    "text" : "Hemoglobina"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "effectiveDateTime" : "2026-07-25T08:15:00-03:00",
  "issued" : "2026-07-25T12:00:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "valueQuantity" : {
    "value" : 13.2,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Faixa de referência informada pelo laboratório: 12,0 a 16,0 g/dL."
  }]
}

```
