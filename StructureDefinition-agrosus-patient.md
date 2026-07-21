# Paciente AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente AgroSUS**

## Resource Profile: Paciente AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSPatient |

 
Perfil do pequeno produtor rural acompanhado pelo módulo AgroSUS no âmbito da Atenção Primária à Saúde. 

**Usos:**

* Usa este Perfil: [Transação da Visita do ACS AgroSUS](StructureDefinition-agrosus-transacao-visita.md)
* Refere a este Perfil: [Resposta da Anamnese AgroSUS](StructureDefinition-agrosus-anamnese-response.md), [Atendimento Clínico da UBS AgroSUS](StructureDefinition-agrosus-atendimento-ubs.md), [Evento de Auditoria AgroSUS](StructureDefinition-agrosus-audit-event.md), [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md)... Show 6 more, [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md), [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md), [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md), [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md), [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md) and [Visita do ACS AgroSUS](StructureDefinition-agrosus-visita-acs.md)
* Exemplos para este Perfil: [Patient/agrosus-patient-example](Patient-agrosus-patient-example.md)
* Declarações de capacidade usando este Perfil: [Requisitos de capacidade do servidor AgroSUS](CapabilityStatement-agrosus-server-capabilities.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/io.github.jefersonrl.agrosus|current/StructureDefinition/StructureDefinition-agrosus-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agrosus-patient.csv), [Excel](StructureDefinition-agrosus-patient.xlsx), [Schematron](StructureDefinition-agrosus-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agrosus-patient",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient",
  "version" : "0.1.0",
  "name" : "AgroSUSPatient",
  "title" : "Paciente AgroSUS",
  "status" : "draft",
  "date" : "2026-07-21T18:25:10+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Perfil do pequeno produtor rural acompanhado pelo módulo AgroSUS no âmbito da Atenção Primária à Saúde.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension:raca",
      "path" : "Patient.extension",
      "sliceName" : "raca",
      "short" : "Raça ou cor autodeclarada",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cns",
      "path" : "Patient.identifier",
      "sliceName" : "cns",
      "short" : "Cartão Nacional de Saúde do trabalhador rural",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:cpf",
      "path" : "Patient.identifier",
      "sliceName" : "cpf",
      "short" : "CPF do trabalhador rural",
      "mustSupport" : true
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "short" : "Situação do cadastro do trabalhador no AgroSUS",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Nome completo do trabalhador rural",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "short" : "Telefone ou outro meio de contato",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sexo administrativo do trabalhador rural",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Data de nascimento do trabalhador rural",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "Endereço do trabalhador rural",
      "mustSupport" : true
    }]
  }
}

```
