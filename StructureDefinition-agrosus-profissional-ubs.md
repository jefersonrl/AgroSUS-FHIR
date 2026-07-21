# Profissional Assistencial da UBS AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Profissional Assistencial da UBS AgroSUS**

## Resource Profile: Profissional Assistencial da UBS AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSProfissionalUBS |

 
Profissional da Unidade Básica de Saúde responsável pela avaliação clínica, acompanhamento ou apoio assistencial ao trabalhador rural no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md)
* Exemplos para este Perfil: [Practitioner/agrosus-profissional-enfermeiro-exemplo](Practitioner-agrosus-profissional-enfermeiro-exemplo.md), [Practitioner/agrosus-profissional-medico-exemplo](Practitioner-agrosus-profissional-medico-exemplo.md) and [Practitioner/agrosus-profissional-tecnico-enfermagem-exemplo](Practitioner-agrosus-profissional-tecnico-enfermagem-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-profissional-ubs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-profissional-ubs.csv), [Excel](StructureDefinition-agrosus-profissional-ubs.xlsx), [Schematron](StructureDefinition-agrosus-profissional-ubs.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-profissional-ubs",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs",
  "version" : "0.1.0",
  "name" : "AgroSUSProfissionalUBS",
  "title" : "Profissional Assistencial da UBS AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T03:34:20+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Profissional da Unidade Básica de Saúde responsável pela avaliação clínica, acompanhamento ou apoio assistencial ao trabalhador rural no AgroSUS.",
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
      "short" : "CNS do profissional assistencial",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:cpf",
      "path" : "Practitioner.identifier",
      "sliceName" : "cpf",
      "short" : "CPF do profissional assistencial",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorMedico",
      "short" : "Registro profissional no conselho de medicina, quando aplicável",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorEnfermeiro",
      "short" : "Registro profissional no conselho de enfermagem, quando aplicável",
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
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "short" : "Formação, especialidade ou qualificação profissional",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "mustSupport" : true
    }]
  }
}

```
