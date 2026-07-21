# Agente Comunitário de Saúde AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agente Comunitário de Saúde AgroSUS**

## Resource Profile: Agente Comunitário de Saúde AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSACS |

 
Perfil do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS. 

**Usos:**

* Refere a este Perfil: [Função do ACS no AgroSUS](StructureDefinition-agrosus-acs-role.md)
* Exemplos para este Perfil: [Practitioner/agrosus-acs-exemplo](Practitioner-agrosus-acs-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-acs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-acs.csv), [Excel](StructureDefinition-agrosus-acs.xlsx), [Schematron](StructureDefinition-agrosus-acs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-acs",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs",
  "version" : "0.1.0",
  "name" : "AgroSUSACS",
  "title" : "Agente Comunitário de Saúde AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T16:38:11+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Perfil do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde responsável pela aplicação da anamnese AgroSUS.",
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
  "type" : "Practitioner",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier:cns",
      "path" : "Practitioner.identifier",
      "sliceName" : "cns",
      "short" : "CNS do profissional responsável pela aplicação",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:cpf",
      "path" : "Practitioner.identifier",
      "sliceName" : "cpf",
      "short" : "CPF do profissional responsável pela aplicação",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "short" : "Indica se o cadastro do profissional está ativo",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "Nome completo do profissional",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "short" : "Meio de contato profissional",
      "mustSupport" : true
    }]
  }
}

```
