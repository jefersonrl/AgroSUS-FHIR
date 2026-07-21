# Exemplo de Enfermeira da UBS AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Enfermeira da UBS AgroSUS**

## Example Practitioner: Exemplo de Enfermeira da UBS AgroSUS

Língua: pt-BR

Perfil: [Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs.md)

**identifier**: Cartão Nacional de Saúde/700000000000005 (utilização: official, )

**active**: true

**name**: Juliana Martins Costa(Official)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "agrosus-profissional-enfermeiro-exemplo",
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
    "value" : "700000000000005"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Juliana Martins Costa",
    "family" : "Costa",
    "given" : ["Juliana", "Martins"]
  }]
}

```
