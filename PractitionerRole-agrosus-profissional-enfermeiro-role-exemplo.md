# Exemplo de Vínculo da Enfermeira com a UBS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Vínculo da Enfermeira com a UBS**

## Example PractitionerRole: Exemplo de Vínculo da Enfermeira com a UBS

Perfil: [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md)

**active**: true

**period**: 2025-01-01 --> (em curso)

**practitioner**: [Juliana Martins Costa](Practitioner-agrosus-profissional-enfermeiro-exemplo.md)

**organization**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)

**code**: Enfermeiro



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "agrosus-profissional-enfermeiro-role-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs-role"]
  },
  "active" : true,
  "period" : {
    "start" : "2025-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/agrosus-profissional-enfermeiro-exemplo",
    "display" : "Juliana Martins Costa"
  },
  "organization" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "223505",
      "display" : "Enfermeiro"
    }]
  }]
}

```
