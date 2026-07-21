# ACS AgroSUS de exemplo - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **ACS AgroSUS de exemplo**

## Example Practitioner: ACS AgroSUS de exemplo

Perfil: [Agente Comunitário de Saúde AgroSUS](StructureDefinition-agrosus-acs.md)

**identifier**: Cartão Nacional de Saúde/123456789101112 (utilização: official, )

**active**: true

**name**: Maria Clara Oliveira (Official)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "agrosus-acs-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-acs"]
  },
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
    "value" : "123456789101112"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Oliveira",
    "given" : ["Maria", "Clara"]
  }]
}

```
