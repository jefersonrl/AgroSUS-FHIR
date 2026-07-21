# Avaliação de boas práticas agrícolas AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Avaliação de boas práticas agrícolas AgroSUS**

## CodeSystem: Avaliação de boas práticas agrícolas AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-avaliacao-boas-praticas | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSAvaliacaoBoasPraticasCS |

 
Terminologia utilizada para avaliar o atendimento aos indicadores de boas práticas agrícolas no formulário AgroSUS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSAvaliacaoBoasPraticasVS](ValueSet-agrosus-avaliacao-boas-praticas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-avaliacao-boas-praticas",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-avaliacao-boas-praticas",
  "version" : "0.1.0",
  "name" : "AgroSUSAvaliacaoBoasPraticasCS",
  "title" : "Avaliação de boas práticas agrícolas AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T13:03:45+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia utilizada para avaliar o atendimento aos indicadores de boas práticas agrícolas no formulário AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "sim",
    "display" : "Sim",
    "definition" : "A boa prática avaliada é realizada ou atendida."
  },
  {
    "code" : "nao",
    "display" : "Não",
    "definition" : "A boa prática avaliada não é realizada ou não é atendida."
  },
  {
    "code" : "nao-se-aplica",
    "display" : "Não se aplica",
    "definition" : "A boa prática avaliada não se aplica à situação do trabalhador ou da propriedade."
  }]
}

```
