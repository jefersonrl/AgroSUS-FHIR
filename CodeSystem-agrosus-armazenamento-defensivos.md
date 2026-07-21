# Armazenamento de defensivos agrícolas AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Armazenamento de defensivos agrícolas AgroSUS**

## CodeSystem: Armazenamento de defensivos agrícolas AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-armazenamento-defensivos | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSArmazenamentoDefensivosCS |

 
Terminologia dos locais utilizados para armazenamento de defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSLocalArmazenamentoDefensivosVS](ValueSet-agrosus-local-armazenamento-defensivos.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-armazenamento-defensivos",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-armazenamento-defensivos",
  "version" : "0.1.0",
  "name" : "AgroSUSArmazenamentoDefensivosCS",
  "title" : "Armazenamento de defensivos agrícolas AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia dos locais utilizados para armazenamento de defensivos agrícolas.",
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
    "code" : "deposito-isolado-especifico",
    "display" : "Depósito isolado e específico",
    "definition" : "Os defensivos agrícolas são armazenados em depósito isolado e destinado especificamente a essa finalidade."
  },
  {
    "code" : "galpao-geral",
    "display" : "Galpão geral",
    "definition" : "Os defensivos agrícolas são armazenados em galpão utilizado também para outras finalidades."
  },
  {
    "code" : "dentro-residencia",
    "display" : "Dentro da residência",
    "definition" : "Os defensivos agrícolas são armazenados no interior da residência."
  },
  {
    "code" : "ao-ar-livre",
    "display" : "Ao ar livre",
    "definition" : "Os defensivos agrícolas são armazenados em área externa sem depósito fechado."
  },
  {
    "code" : "outro",
    "display" : "Outro",
    "definition" : "Outro local de armazenamento não especificado."
  }]
}

```
