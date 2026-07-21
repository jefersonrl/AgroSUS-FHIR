# Exemplo de Visita do ACS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Visita do ACS AgroSUS**

## Example Encounter: Exemplo de Visita do ACS AgroSUS

Língua: pt-BR

Perfil: [Visita do ACS AgroSUS](StructureDefinition-agrosus-visita-acs.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/visita`/VISITA-2026-000001

**status**: Finished

**class**: [ActCode: FLD](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-FLD) (field)

**priority**: Rotina

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | Executor principal | [Maria Clara Oliveira — ACS da UBS Jardim Esperança](PractitionerRole-agrosus-acs-role-exemplo.md) |

**period**: 2026-07-20 09:00:00-0300 --> 2026-07-20 10:00:00-0300

**reasonCode**: Aplicação inicial da anamnese ocupacional e ambiental AgroSUS

**serviceProvider**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "agrosus-visita-acs-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/visita",
    "value" : "VISITA-2026-000001"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "FLD",
    "display" : "field"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
      "code" : "R",
      "display" : "routine"
    }],
    "text" : "Rotina"
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
      }],
      "text" : "Executor principal"
    }],
    "individual" : {
      "reference" : "PractitionerRole/agrosus-acs-role-exemplo",
      "display" : "Maria Clara Oliveira — ACS da UBS Jardim Esperança"
    }
  }],
  "period" : {
    "start" : "2026-07-20T09:00:00-03:00",
    "end" : "2026-07-20T10:00:00-03:00"
  },
  "reasonCode" : [{
    "text" : "Aplicação inicial da anamnese ocupacional e ambiental AgroSUS"
  }],
  "serviceProvider" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  }
}

```
