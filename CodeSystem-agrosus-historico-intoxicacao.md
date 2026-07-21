# Histórico de intoxicação AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Histórico de intoxicação AgroSUS**

## CodeSystem: Histórico de intoxicação AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-historico-intoxicacao | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSHistoricoIntoxicacaoCS |

 
Terminologia para registrar a quantidade autorreferida de episódios anteriores de intoxicação aguda por defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSNumeroIntoxicacoesAgudasVS](ValueSet-agrosus-numero-intoxicacoes-agudas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-historico-intoxicacao",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-historico-intoxicacao",
  "version" : "0.1.0",
  "name" : "AgroSUSHistoricoIntoxicacaoCS",
  "title" : "Histórico de intoxicação AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T14:46:27+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia para registrar a quantidade autorreferida de episódios anteriores de intoxicação aguda por defensivos agrícolas.",
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
    "code" : "nenhuma",
    "display" : "Nenhuma",
    "definition" : "O trabalhador não refere episódio anterior de intoxicação aguda."
  },
  {
    "code" : "uma-vez",
    "display" : "1 vez",
    "definition" : "O trabalhador refere um episódio anterior de intoxicação aguda."
  },
  {
    "code" : "duas-tres-vezes",
    "display" : "2–3 vezes",
    "definition" : "O trabalhador refere entre dois e três episódios anteriores de intoxicação aguda."
  },
  {
    "code" : "quatro-ou-mais",
    "display" : "4 ou mais vezes",
    "definition" : "O trabalhador refere quatro ou mais episódios anteriores de intoxicação aguda."
  }]
}

```
