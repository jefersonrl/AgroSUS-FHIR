# Unidade Básica de Saúde AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unidade Básica de Saúde AgroSUS**

## Resource Profile: Unidade Básica de Saúde AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSUBS |

 
Perfil da Unidade Básica de Saúde responsável pelo acompanhamento do trabalhador rural no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Função do ACS no AgroSUS](StructureDefinition-agrosus-acs-role.md), [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md), [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md)... Show 3 more, [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md), [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) and [Visita do ACS AgroSUS](StructureDefinition-agrosus-visita-acs.md)
* Exemplos para este Perfil: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-ubs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-ubs.csv), [Excel](StructureDefinition-agrosus-ubs.xlsx), [Schematron](StructureDefinition-agrosus-ubs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-ubs",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs",
  "version" : "0.1.0",
  "name" : "AgroSUSUBS",
  "title" : "Unidade Básica de Saúde AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T16:50:13+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Perfil da Unidade Básica de Saúde responsável pelo acompanhamento do trabalhador rural no AgroSUS.",
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
      "short" : "Código CNES da Unidade Básica de Saúde",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:cnpj",
      "path" : "Organization.identifier",
      "sliceName" : "cnpj",
      "short" : "CNPJ da organização responsável pela UBS",
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Indica se a UBS está ativa",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Tipo do estabelecimento de saúde",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nome oficial da Unidade Básica de Saúde",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "Meios de contato da UBS",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "short" : "Endereço da UBS",
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Secretaria, rede ou organização à qual a UBS pertence",
      "mustSupport" : true
    }]
  }
}

```
