# Exemplo de Médico da UBS AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Médico da UBS AgroSUS**

## Example Practitioner: Exemplo de Médico da UBS AgroSUS

Língua: pt-BR

Perfil: [Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs.md)

**identifier**: Cartão Nacional de Saúde/200000000000003 (utilização: official, )

**active**: true

**name**: Eduardo Henrique Almeida(Official)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "agrosus-profissional-medico-exemplo",
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
    "value" : "200000000000003"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Eduardo Henrique Almeida",
    "family" : "Almeida",
    "given" : ["Eduardo", "Henrique"]
  }]
}

```
