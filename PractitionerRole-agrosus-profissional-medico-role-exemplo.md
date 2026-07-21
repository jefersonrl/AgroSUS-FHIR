# Exemplo de Vínculo do Médico com a UBS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Vínculo do Médico com a UBS**

## Example PractitionerRole: Exemplo de Vínculo do Médico com a UBS

Perfil: [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md)

**active**: true

**period**: 2025-01-01 --> (em curso)

**practitioner**: [Eduardo Henrique Almeida](Practitioner-agrosus-profissional-medico-exemplo.md)

**organization**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)

**code**: Médico da estratégia de saúde da família



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "agrosus-profissional-medico-role-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"]
  },
  "active" : true,
  "period" : {
    "start" : "2025-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/agrosus-profissional-medico-exemplo",
    "display" : "Eduardo Henrique Almeida"
  },
  "organization" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225142",
      "display" : "Médico da estratégia de saúde da família"
    }]
  }]
}

```
