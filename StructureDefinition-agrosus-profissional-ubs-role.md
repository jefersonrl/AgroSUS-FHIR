# Função do Profissional Assistencial da UBS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Função do Profissional Assistencial da UBS AgroSUS**

## Resource Profile: Função do Profissional Assistencial da UBS AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSProfissionalUBSRole |

 
Vínculo funcional do profissional assistencial com a UBS responsável pelo acompanhamento do trabalhador rural no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md), [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md)... Show 2 more, [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) and [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)
* Exemplos para este Perfil: [PractitionerRole/agrosus-profissional-enfermeiro-role-exemplo](PractitionerRole-agrosus-profissional-enfermeiro-role-exemplo.md), [PractitionerRole/agrosus-profissional-medico-role-exemplo](PractitionerRole-agrosus-profissional-medico-role-exemplo.md) and [PractitionerRole/agrosus-profissional-tecnico-enfermagem-role-exemplo](PractitionerRole-agrosus-profissional-tecnico-enfermagem-role-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-profissional-ubs-role.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-profissional-ubs-role.csv), [Excel](StructureDefinition-agrosus-profissional-ubs-role.xlsx), [Schematron](StructureDefinition-agrosus-profissional-ubs-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-profissional-ubs-role",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role",
  "version" : "0.1.0",
  "name" : "AgroSUSProfissionalUBSRole",
  "title" : "Função do Profissional Assistencial da UBS AgroSUS",
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
  "description" : "Vínculo funcional do profissional assistencial com a UBS responsável pelo acompanhamento do trabalhador rural no AgroSUS.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "short" : "Indica se o vínculo profissional está ativo",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "short" : "Período de validade do vínculo com a UBS",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Profissional assistencial que exerce a função",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "UBS onde o profissional exerce suas atividades",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Ocupação do profissional segundo a CBO",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-profissional-ubs"
      }
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Local onde o profissional exerce suas atividades",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Serviço de saúde associado ao vínculo",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Contato relacionado ao vínculo profissional",
      "mustSupport" : true
    }]
  }
}

```
