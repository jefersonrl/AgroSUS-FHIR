# Proveniência dos Registros AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Proveniência dos Registros AgroSUS**

## Resource Profile: Proveniência dos Registros AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSProvenance |

 
Registro de autoria, criação, atualização e origem dos recursos clínicos e assistenciais do AgroSUS. 

**Usos:**

* Usa este Perfil: [Transação da Visita do ACS AgroSUS](StructureDefinition-agrosus-transacao-visita.md)
* Exemplos para este Perfil: [Provenance/agrosus-provenance-anamnese-exemplo](Provenance-agrosus-provenance-anamnese-exemplo.md) and [Provenance/agrosus-provenance-plano-acompanhamento-exemplo](Provenance-agrosus-provenance-plano-acompanhamento-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-provenance.csv), [Excel](StructureDefinition-agrosus-provenance.xlsx), [Schematron](StructureDefinition-agrosus-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-provenance",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance",
  "version" : "0.1.0",
  "name" : "AgroSUSProvenance",
  "title" : "Proveniência dos Registros AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T15:31:26+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Registro de autoria, criação, atualização e origem dos recursos clínicos e assistenciais do AgroSUS.",
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
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "Recursos criados ou atualizados pela atividade registrada",
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
      "id" : "Provenance.occurred[x]",
      "path" : "Provenance.occurred[x]",
      "short" : "Momento em que a atividade ocorreu",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "short" : "Momento em que a proveniência foi registrada",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.policy",
      "path" : "Provenance.policy",
      "short" : "Política institucional aplicável ao registro",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.reason",
      "path" : "Provenance.reason",
      "short" : "Finalidade da criação ou atualização",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity",
      "path" : "Provenance.activity",
      "short" : "Operação realizada, como criação ou atualização",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.type",
      "path" : "Provenance.agent.type",
      "short" : "Forma de participação do agente",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.role",
      "path" : "Provenance.agent.role",
      "short" : "Função exercida pelo agente",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "short" : "Agente responsável pela atividade",
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
      "id" : "Provenance.agent.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "short" : "Organização representada pelo agente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs",
        "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.entity",
      "path" : "Provenance.entity",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.entity.role",
      "path" : "Provenance.entity.role",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.entity.what",
      "path" : "Provenance.entity.what",
      "short" : "Recurso utilizado como fonte para a atividade",
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
      "id" : "Provenance.signature",
      "path" : "Provenance.signature",
      "short" : "Assinatura digital, quando implementada",
      "mustSupport" : true
    }]
  }
}

```
