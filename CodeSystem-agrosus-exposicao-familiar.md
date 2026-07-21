# Exposição familiar AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exposição familiar AgroSUS**

## CodeSystem: Exposição familiar AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao-familiar | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSExposicaoFamiliarCS |

 
Terminologia para identificar familiares que auxiliam na aplicação de defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSFamiliaresAuxiliamAplicacaoVS](ValueSet-agrosus-familiares-auxiliam-aplicacao.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-exposicao-familiar",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao-familiar",
  "version" : "0.1.0",
  "name" : "AgroSUSExposicaoFamiliarCS",
  "title" : "Exposição familiar AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T16:50:13+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia para identificar familiares que auxiliam na aplicação de defensivos agrícolas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "conjuge",
    "display" : "Cônjuge",
    "definition" : "Cônjuge ou companheiro do trabalhador rural."
  },
  {
    "code" : "filhos",
    "display" : "Filhos",
    "definition" : "Filhos ou filhas do trabalhador rural."
  },
  {
    "code" : "pais-sogros",
    "display" : "Pais ou sogros",
    "definition" : "Pais, mães, sogros ou sogras do trabalhador rural."
  },
  {
    "code" : "outros",
    "display" : "Outros familiares",
    "definition" : "Outros familiares que auxiliam na aplicação de defensivos agrícolas."
  }]
}

```
