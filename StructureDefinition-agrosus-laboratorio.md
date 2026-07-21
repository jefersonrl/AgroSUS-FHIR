# Laboratório AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratório AgroSUS**

## Resource Profile: Laboratório AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSLaboratorio |

 
Organização responsável pela realização e emissão de resultados de exames laboratoriais utilizados no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md), [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md), [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md) and [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)
* Exemplos para este Perfil: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-laboratorio.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-laboratorio.csv), [Excel](StructureDefinition-agrosus-laboratorio.xlsx), [Schematron](StructureDefinition-agrosus-laboratorio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-laboratorio",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio",
  "version" : "0.1.0",
  "name" : "AgroSUSLaboratorio",
  "title" : "Laboratório AgroSUS",
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
  "description" : "Organização responsável pela realização e emissão de resultados de exames laboratoriais utilizados no AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier:cnes",
      "path" : "Organization.identifier",
      "sliceName" : "cnes",
      "short" : "Identificador CNES do laboratório",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:cnpj",
      "path" : "Organization.identifier",
      "sliceName" : "cnpj",
      "short" : "CNPJ do laboratório, quando aplicável",
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Indica se o laboratório está ativo",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Tipo de estabelecimento laboratorial",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nome oficial do laboratório",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "Contato institucional do laboratório",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "short" : "Endereço do laboratório",
      "mustSupport" : true
    }]
  }
}

```
