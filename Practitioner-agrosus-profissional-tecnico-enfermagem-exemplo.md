# Exemplo de Técnico de Enfermagem da UBS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Técnico de Enfermagem da UBS AgroSUS**

## Example Practitioner: Exemplo de Técnico de Enfermagem da UBS AgroSUS

Língua: pt-BR

Perfil: [Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs.md)

**identifier**: Cartão Nacional de Saúde/800000000000001 (utilização: official, )

**active**: true

**name**: Rafael dos Santos Lima(Official)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "agrosus-profissional-tecnico-enfermagem-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-profissional-ubs"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC"
      }],
      "text" : "Cartão Nacional de Saúde"
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "800000000000001"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Rafael dos Santos Lima",
    "family" : "Lima",
    "given" : ["Rafael", "dos Santos"]
  }]
}

```
