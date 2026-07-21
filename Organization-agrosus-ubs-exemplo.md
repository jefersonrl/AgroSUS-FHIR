# UBS AgroSUS de exemplo - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **UBS AgroSUS de exemplo**

## Example Organization: UBS AgroSUS de exemplo

Perfil: [Unidade Básica de Saúde AgroSUS](StructureDefinition-agrosus-ubs.md)

**identifier**: Provider number/7654321 (utilização: official, )

**active**: true

**name**: UBS Jardim Esperança — Exemplo AgroSUS

**alias**: UBS Jardim Esperança

**address**: Rua da Esperança, 250 — Jardim Esperança — Ferraz de Vasconcelos/SP(work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "agrosus-ubs-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-ubs"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "7654321"
  }],
  "active" : true,
  "name" : "UBS Jardim Esperança — Exemplo AgroSUS",
  "alias" : ["UBS Jardim Esperança"],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "Rua da Esperança, 250 — Jardim Esperança — Ferraz de Vasconcelos/SP",
    "line" : ["Rua da Esperança, 250"],
    "city" : "Ferraz de Vasconcelos",
    "district" : "Jardim Esperança",
    "state" : "SP",
    "postalCode" : "08500-000",
    "country" : "Brasil"
  }]
}

```
