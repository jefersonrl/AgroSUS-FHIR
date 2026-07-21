# Exemplo de Auditoria de Consulta ao Dashboard - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Auditoria de Consulta ao Dashboard**

## Example AuditEvent: Exemplo de Auditoria de Consulta ao Dashboard

Língua: pt-BR

Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.1.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: [FHIR Restful Interactions: read](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-read) (read)

**action**: Read/View/Print

**period**: 2026-07-26 09:59:58-0300 --> 2026-07-26 10:00:02-0300

**recorded**: 2026-07-26 10:00:03-0300

**outcome**: Success

**outcomeDesc**: Consulta realizada com sucesso

**purposeOfEvent**: Avaliação e acompanhamento assistencial

> **agent****who**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)**name**: Eduardo Henrique Almeida**requestor**: true

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | 192.0.2.10 | IP Address |

**purposeOfUse**: Continuidade do cuidado na UBS

### Sources

| | | |
| :--- | :--- | :--- |
| - | **Site** | **Observer** |
| * | Dashboard AgroSUS — UBS Jardim Esperança | [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md) |

> **entity****what**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)**description**: Cadastro do trabalhador consultado

> **entity****what**: [Resposta da anamnese AgroSUS](QuestionnaireResponse-agrosus-anamnese-response-example.md)**description**: Anamnese consultada durante a avaliação

> **entity****what**: [Laudo de hemograma completo](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md)**description**: Laudo laboratorial consultado durante a avaliação

> **entity****what**: [Plano de acompanhamento AgroSUS](CarePlan-agrosus-plano-acompanhamento-exemplo.md)**description**: Plano assistencial consultado no dashboard



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "agrosus-auditoria-consulta-dashboard-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-audit-event"]
  },
  "language" : "pt-BR",
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest",
    "display" : "RESTful Operation"
  },
  "subtype" : [{
    "system" : "http://hl7.org/fhir/restful-interaction",
    "code" : "read",
    "display" : "read"
  }],
  "action" : "R",
  "period" : {
    "start" : "2026-07-26T09:59:58-03:00",
    "end" : "2026-07-26T10:00:02-03:00"
  },
  "recorded" : "2026-07-26T10:00:03-03:00",
  "outcome" : "0",
  "outcomeDesc" : "Consulta realizada com sucesso",
  "purposeOfEvent" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    }],
    "text" : "Avaliação e acompanhamento assistencial"
  }],
  "agent" : [{
    "who" : {
      "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
      "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
    },
    "name" : "Eduardo Henrique Almeida",
    "requestor" : true,
    "network" : {
      "address" : "192.0.2.10",
      "type" : "2"
    },
    "purposeOfUse" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "TREAT",
        "display" : "treatment"
      }],
      "text" : "Continuidade do cuidado na UBS"
    }]
  }],
  "source" : {
    "site" : "Dashboard AgroSUS — UBS Jardim Esperança",
    "observer" : {
      "reference" : "Organization/agrosus-ubs-exemplo",
      "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "Patient/agrosus-patient-example",
      "display" : "Maria Aparecida de Souza"
    },
    "description" : "Cadastro do trabalhador consultado"
  },
  {
    "what" : {
      "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example",
      "display" : "Resposta da anamnese AgroSUS"
    },
    "description" : "Anamnese consultada durante a avaliação"
  },
  {
    "what" : {
      "reference" : "DiagnosticReport/agrosus-laudo-hemograma-exemplo",
      "display" : "Laudo de hemograma completo"
    },
    "description" : "Laudo laboratorial consultado durante a avaliação"
  },
  {
    "what" : {
      "reference" : "CarePlan/agrosus-plano-acompanhamento-exemplo",
      "display" : "Plano de acompanhamento AgroSUS"
    },
    "description" : "Plano assistencial consultado no dashboard"
  }]
}

```
