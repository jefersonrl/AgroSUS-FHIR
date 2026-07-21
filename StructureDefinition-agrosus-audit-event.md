# Evento de Auditoria AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Evento de Auditoria AgroSUS**

## Resource Profile: Evento de Auditoria AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-audit-event | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSAuditEvent |

 
Registro de segurança para rastrear consultas, alterações e outras operações realizadas sobre os dados do AgroSUS. 

**Usos:**

* Exemplos para este Perfil: [AuditEvent/agrosus-auditoria-consulta-dashboard-exemplo](AuditEvent-agrosus-auditoria-consulta-dashboard-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-audit-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-audit-event.csv), [Excel](StructureDefinition-agrosus-audit-event.xlsx), [Schematron](StructureDefinition-agrosus-audit-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-audit-event",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-audit-event",
  "version" : "0.1.0",
  "name" : "AgroSUSAuditEvent",
  "title" : "Evento de Auditoria AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Registro de segurança para rastrear consultas, alterações e outras operações realizadas sobre os dados do AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.type",
      "path" : "AuditEvent.type",
      "short" : "Tipo geral do evento de auditoria",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.subtype",
      "path" : "AuditEvent.subtype",
      "short" : "Operação específica executada",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "short" : "Ação realizada: criar, consultar, atualizar, excluir ou executar",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.period",
      "path" : "AuditEvent.period",
      "short" : "Período em que a operação ocorreu",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "short" : "Momento em que o evento foi registrado",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "short" : "Resultado da operação",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcomeDesc",
      "path" : "AuditEvent.outcomeDesc",
      "short" : "Descrição adicional do resultado",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.purposeOfEvent",
      "path" : "AuditEvent.purposeOfEvent",
      "short" : "Finalidade assistencial ou administrativa do acesso",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.type",
      "path" : "AuditEvent.agent.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.role",
      "path" : "AuditEvent.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who",
      "path" : "AuditEvent.agent.who",
      "short" : "Usuário, organização ou sistema que participou do evento",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.name",
      "path" : "AuditEvent.agent.name",
      "short" : "Identificação legível do agente",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.requestor",
      "path" : "AuditEvent.agent.requestor",
      "short" : "Indica se o agente iniciou a operação",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.policy",
      "path" : "AuditEvent.agent.policy",
      "short" : "Política que autorizou o acesso",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.network",
      "path" : "AuditEvent.agent.network",
      "short" : "Origem de rede da operação, quando disponível",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.network.address",
      "path" : "AuditEvent.agent.network.address",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.network.type",
      "path" : "AuditEvent.agent.network.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.purposeOfUse",
      "path" : "AuditEvent.agent.purposeOfUse",
      "short" : "Finalidade declarada para o uso dos dados",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.site",
      "path" : "AuditEvent.source.site",
      "short" : "Sistema ou local lógico que registrou o evento",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer",
      "path" : "AuditEvent.source.observer",
      "short" : "Organização responsável pelo registro da auditoria",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.type",
      "path" : "AuditEvent.source.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.what",
      "path" : "AuditEvent.entity.what",
      "short" : "Recurso consultado ou afetado pela operação",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.type",
      "path" : "AuditEvent.entity.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.role",
      "path" : "AuditEvent.entity.role",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.lifecycle",
      "path" : "AuditEvent.entity.lifecycle",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.securityLabel",
      "path" : "AuditEvent.entity.securityLabel",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.name",
      "path" : "AuditEvent.entity.name",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.description",
      "path" : "AuditEvent.entity.description",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.query",
      "path" : "AuditEvent.entity.query",
      "mustSupport" : true
    }]
  }
}

```
