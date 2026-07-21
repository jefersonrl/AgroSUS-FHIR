# Rastreabilidade das aplicações AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Rastreabilidade das aplicações AgroSUS**

## CodeSystem: Rastreabilidade das aplicações AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-rastreabilidade | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSRastreabilidadeCS |

 
Terminologia utilizada para identificar onde são armazenados os registros das aplicações de defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSArmazenamentoRegistrosVS](ValueSet-agrosus-armazenamento-registros.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-rastreabilidade",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-rastreabilidade",
  "version" : "0.1.0",
  "name" : "AgroSUSRastreabilidadeCS",
  "title" : "Rastreabilidade das aplicações AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T12:31:15+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia utilizada para identificar onde são armazenados os registros das aplicações de defensivos agrícolas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "caderno-diario",
    "display" : "Caderno ou diário",
    "definition" : "Os registros das aplicações são mantidos em caderno ou diário."
  },
  {
    "code" : "planilha-papel",
    "display" : "Planilha em papel",
    "definition" : "Os registros das aplicações são mantidos em formulário ou planilha impressa."
  },
  {
    "code" : "aplicativo",
    "display" : "Aplicativo",
    "definition" : "Os registros das aplicações são mantidos em aplicativo móvel."
  },
  {
    "code" : "software-agricola",
    "display" : "Software agrícola",
    "definition" : "Os registros das aplicações são mantidos em sistema informatizado de gestão agrícola."
  },
  {
    "code" : "nao-registra",
    "display" : "Não registra",
    "definition" : "Não mantém registro das aplicações de defensivos agrícolas."
  }]
}

```
