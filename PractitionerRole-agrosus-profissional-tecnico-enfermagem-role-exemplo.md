# Exemplo de Vínculo do Técnico de Enfermagem - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Vínculo do Técnico de Enfermagem**

## Example PractitionerRole: Exemplo de Vínculo do Técnico de Enfermagem

Perfil: [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md)

**active**: true

**period**: 2025-01-01 --> (em curso)

**practitioner**: [Rafael dos Santos Lima](Practitioner-agrosus-profissional-tecnico-enfermagem-exemplo.md)

**organization**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)

**code**: Técnico de enfermagem



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "agrosus-profissional-tecnico-enfermagem-role-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"]
  },
  "active" : true,
  "period" : {
    "start" : "2025-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/agrosus-profissional-tecnico-enfermagem-exemplo",
    "display" : "Rafael dos Santos Lima"
  },
  "organization" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "322205",
      "display" : "Técnico de enfermagem"
    }]
  }]
}

```
