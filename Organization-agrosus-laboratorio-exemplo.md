# Exemplo de Laboratório AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Laboratório AgroSUS**

## Example Organization: Exemplo de Laboratório AgroSUS

Língua: pt-BR

Perfil: [Laboratório AgroSUS](StructureDefinition-agrosus-laboratorio.md)

**identifier**: Provider number/1234567 (utilização: official, )

**active**: true

**name**: Laboratório Municipal de Referência — Exemplo AgroSUS

**alias**: Laboratório Municipal AgroSUS

**address**: Rua das Acácias, 100 — Centro — Ferraz de Vasconcelos/SP(work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "agrosus-laboratorio-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laboratorio"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "1234567"
  }],
  "active" : true,
  "name" : "Laboratório Municipal de Referência — Exemplo AgroSUS",
  "alias" : ["Laboratório Municipal AgroSUS"],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "Rua das Acácias, 100 — Centro — Ferraz de Vasconcelos/SP",
    "line" : ["Rua das Acácias, 100"],
    "city" : "Ferraz de Vasconcelos",
    "district" : "Centro",
    "state" : "SP",
    "postalCode" : "08500-000",
    "country" : "Brasil"
  }]
}

```
