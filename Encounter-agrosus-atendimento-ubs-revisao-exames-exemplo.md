# Exemplo de Atendimento para Revisão dos Exames - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Atendimento para Revisão dos Exames**

## Example Encounter: Exemplo de Atendimento para Revisão dos Exames

Língua: pt-BR

Perfil: [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/atendimento-ubs`/ATEND-UBS-2026-000002

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Revisão clínica e laboratorial de trabalhador rural exposto a defensivos agrícolas

**priority**: routine

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

### Participants

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Period** | **Individual** |
| * | primary performer | 2026-07-26 10:00:00-0300 --> 2026-07-26 10:40:00-0300 | [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md) |

**period**: 2026-07-26 10:00:00-0300 --> 2026-07-26 10:40:00-0300

**reasonReference**: [Suspeita de intoxicação por pesticida em investigação](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Use** |
| * | [Suspeita de intoxicação por pesticida em investigação](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md) | Admission diagnosis |

**serviceProvider**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agrosus-atendimento-ubs-revisao-exames-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/atendimento-ubs",
    "value" : "ATEND-UBS-2026-000002"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "text" : "Revisão clínica e laboratorial de trabalhador rural exposto a defensivos agrícolas"
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
      "start" : "2026-07-26T10:00:00-03:00",
      "end" : "2026-07-26T10:40:00-03:00"
    },
    "individual" : {
      "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
      "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
    }
  }],
  "period" : {
    "start" : "2026-07-26T10:00:00-03:00",
    "end" : "2026-07-26T10:40:00-03:00"
  },
  "reasonReference" : [{
    "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
    "display" : "Suspeita de intoxicação por pesticida em investigação"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
      "display" : "Suspeita de intoxicação por pesticida em investigação"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  }
}

```
