# Vínculo profissional do ACS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vínculo profissional do ACS AgroSUS**

## Example PractitionerRole: Vínculo profissional do ACS AgroSUS

Perfil: [Função do ACS no AgroSUS](StructureDefinition-agrosus-acs-role.md)

**active**: true

**period**: 2025-01-01 --> (em curso)

**practitioner**: [Maria Clara Oliveira](Practitioner-agrosus-acs-exemplo.md)

**organization**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)

**code**: Agente comunitário de saúde



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "agrosus-acs-role-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs-role"]
  },
  "active" : true,
  "period" : {
    "start" : "2025-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/agrosus-acs-exemplo",
    "display" : "Maria Clara Oliveira"
  },
  "organization" : {
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "515105",
      "display" : "Agente comunitário de saúde"
    }]
  }]
}

```
