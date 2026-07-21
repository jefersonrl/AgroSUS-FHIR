# Requisitos de capacidade do servidor AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Requisitos de capacidade do servidor AgroSUS**

## CapabilityStatement: Requisitos de capacidade do servidor AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CapabilityStatement/agrosus-server-capabilities | *Version*:0.1.0 |
| Draft as of 2026-07-20 | *Computable Name*:AgroSUSServerCapabilities |

 
Define os recursos, interações, pesquisas e transações que devem ser suportados por uma implementação de servidor compatível com o AgroSUS. 

 [Raw OpenAPI-Swagger Definition file](agrosus-server-capabilities.openapi.json) | [Download](agrosus-server-capabilities.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "agrosus-server-capabilities",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CapabilityStatement/agrosus-server-capabilities",
  "version" : "0.1.0",
  "name" : "AgroSUSServerCapabilities",
  "title" : "Requisitos de capacidade do servidor AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-20",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Define os recursos, interações, pesquisas e transações que devem ser suportados por uma implementação de servidor compatível com o AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "implementationGuide" : ["https://jefersonrl.github.io/AgroSUS-FHIR/ImplementationGuide/io.github.jefersonrl.agrosus"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "API FHIR R4 para cadastro e acompanhamento longitudinal do trabalhador rural. O aplicativo do ACS deve enviar a visita por Bundle transaction; o dashboard da UBS consulta os dados pelos parâmetros declarados neste CapabilityStatement.",
    "security" : {
      "cors" : true,
      "description" : "A implementação deve utilizar TLS, autenticação, autorização por função e registro de auditoria. CORS deve ser limitado às origens autorizadas em produção."
    },
    "resource" : [{
      "type" : "Patient",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "local"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Localiza o trabalhador por CPF ou CNS usando system|value."
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "type" : "Practitioner",
      "supportedProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs",
      "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "name",
        "type" : "string"
      }]
    },
    {
      "type" : "PractitionerRole",
      "supportedProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role",
      "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "practitioner",
        "type" : "reference"
      },
      {
        "name" : "organization",
        "type" : "reference"
      },
      {
        "name" : "role",
        "type" : "token"
      },
      {
        "name" : "active",
        "type" : "token"
      }]
    },
    {
      "type" : "Organization",
      "supportedProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs",
      "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"],
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token"
      },
      {
        "name" : "name",
        "type" : "string"
      },
      {
        "name" : "active",
        "type" : "token"
      }]
    },
    {
      "type" : "Questionnaire",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "url",
        "type" : "uri"
      },
      {
        "name" : "version",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "QuestionnaireResponse",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-anamnese-response",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "updateCreate" : true,
      "referencePolicy" : ["literal", "local"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference"
      },
      {
        "name" : "encounter",
        "type" : "reference"
      },
      {
        "name" : "author",
        "type" : "reference"
      },
      {
        "name" : "authored",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      }]
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-visita-acs",
      "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-atendimento-ubs"],
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "updateCreate" : true,
      "referencePolicy" : ["literal", "local"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "participant",
        "type" : "reference"
      }]
    },
    {
      "type" : "ServiceRequest",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "authored",
        "type" : "date"
      },
      {
        "name" : "requester",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "code",
        "type" : "token"
      }]
    },
    {
      "type" : "Observation",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "based-on",
        "type" : "reference"
      }]
    },
    {
      "type" : "DiagnosticReport",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "based-on",
        "type" : "reference"
      }]
    },
    {
      "type" : "Condition",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "clinical-status",
        "type" : "token"
      },
      {
        "name" : "verification-status",
        "type" : "token"
      },
      {
        "name" : "code",
        "type" : "token"
      },
      {
        "name" : "onset-date",
        "type" : "date"
      }]
    },
    {
      "type" : "CarePlan",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference"
      },
      {
        "name" : "status",
        "type" : "token"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "category",
        "type" : "token"
      }]
    },
    {
      "type" : "Provenance",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "read"
      },
      {
        "code" : "update"
      },
      {
        "code" : "search-type"
      }],
      "versioning" : "versioned-update",
      "updateCreate" : true,
      "referencePolicy" : ["literal", "local"],
      "searchParam" : [{
        "name" : "target",
        "type" : "reference"
      },
      {
        "name" : "agent",
        "type" : "reference"
      },
      {
        "name" : "recorded",
        "type" : "date"
      }]
    },
    {
      "type" : "AuditEvent",
      "profile" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-audit-event",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "referencePolicy" : ["literal"],
      "searchParam" : [{
        "name" : "agent",
        "type" : "reference"
      },
      {
        "name" : "date",
        "type" : "date"
      },
      {
        "name" : "entity",
        "type" : "reference"
      },
      {
        "name" : "action",
        "type" : "token"
      }]
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "Aceita a transação AgroSUS de sincronização da visita do ACS de forma atômica."
    }]
  }]
}

```
