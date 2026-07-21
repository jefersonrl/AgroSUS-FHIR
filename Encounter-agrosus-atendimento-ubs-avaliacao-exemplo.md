# Exemplo de Atendimento Clínico da UBS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Atendimento Clínico da UBS AgroSUS**

## Example Encounter: Exemplo de Atendimento Clínico da UBS AgroSUS

Língua: pt-BR

Perfil: [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/atendimento-ubs`/ATEND-UBS-2026-000001

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Avaliação clínica de trabalhador rural exposto a defensivos agrícolas

**priority**: routine

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

### Participants

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Period** | **Individual** |
| * | primary performer | 2026-07-20 10:30:00-0300 --> 2026-07-20 11:10:00-0300 | [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md) |

**period**: 2026-07-20 10:30:00-0300 --> 2026-07-20 11:10:00-0300

**reasonCode**: Avaliação clínica após identificação de exposição ocupacional a defensivos agrícolas

**serviceProvider**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agrosus-atendimento-ubs-avaliacao-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/atendimento-ubs",
    "value" : "ATEND-UBS-2026-000001"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "text" : "Avaliação clínica de trabalhador rural exposto a defensivos agrícolas"
  }],
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
      "code" : "R",
      "display" : "routine"
    }]
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PPRF",
        "display" : "primary performer"
      }]
    }],
    "period" : {
      "start" : "2026-07-20T10:30:00-03:00",
      "end" : "2026-07-20T11:10:00-03:00"
    },
    "individual" : {
      "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
      "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
    }
  }],
  "period" : {
    "start" : "2026-07-20T10:30:00-03:00",
    "end" : "2026-07-20T11:10:00-03:00"
  },
  "reasonCode" : [{
    "text" : "Avaliação clínica após identificação de exposição ocupacional a defensivos agrícolas"
  }],
  "serviceProvider" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  }
}

```
