# Função do ACS no AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Função do ACS no AgroSUS**

## Resource Profile: Função do ACS no AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSACSRole |

 
Perfil do vínculo do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde com a organização responsável pelo atendimento no AgroSUS. 

**Usos:**

* Refere a este Perfil: [Resposta da Anamnese AgroSUS](StructureDefinition-agrosus-anamnese-response.md), [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md) and [Visita do ACS AgroSUS](StructureDefinition-agrosus-visita-acs.md)
* Exemplos para este Perfil: [PractitionerRole/agrosus-acs-role-exemplo](PractitionerRole-agrosus-acs-role-exemplo.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-acs-role.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-acs-role.csv), [Excel](StructureDefinition-agrosus-acs-role.xlsx), [Schematron](StructureDefinition-agrosus-acs-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-acs-role",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role",
  "version" : "0.1.0",
  "name" : "AgroSUSACSRole",
  "title" : "Função do ACS no AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T13:39:22+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Perfil do vínculo do Agente Comunitário de Saúde ou Técnico em Agente Comunitário de Saúde com a organização responsável pelo atendimento no AgroSUS.",
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
      "short" : "Período de validade do vínculo do ACS com a organização",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "ACS ou Técnico em ACS que exerce esta função",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "UBS à qual o ACS está vinculado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Ocupação do ACS segundo a CBO",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-acs"
      }
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Local onde o ACS exerce suas atividades",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Serviço de saúde associado à atuação do ACS",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Contato profissional relacionado ao vínculo",
      "mustSupport" : true
    }]
  }
}

```
