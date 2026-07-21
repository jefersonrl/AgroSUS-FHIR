# Destinação de embalagens vazias AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Destinação de embalagens vazias AgroSUS**

## CodeSystem: Destinação de embalagens vazias AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-destinacao-embalagens | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSDestinacaoEmbalagensCS |

 
Terminologia das formas de destinação de embalagens vazias de defensivos agrícolas quando não são devolvidas em local autorizado. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSDestinacaoEmbalagensNaoDevolvidasVS](ValueSet-agrosus-destinacao-embalagens-nao-devolvidas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-destinacao-embalagens",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-destinacao-embalagens",
  "version" : "0.1.0",
  "name" : "AgroSUSDestinacaoEmbalagensCS",
  "title" : "Destinação de embalagens vazias AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T13:58:44+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia das formas de destinação de embalagens vazias de defensivos agrícolas quando não são devolvidas em local autorizado.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "queima",
    "display" : "Queima",
    "definition" : "As embalagens vazias são queimadas."
  },
  {
    "code" : "enterra",
    "display" : "Enterra",
    "definition" : "As embalagens vazias são enterradas."
  },
  {
    "code" : "lanca-rio-corrego",
    "display" : "Lança em rio ou córrego",
    "definition" : "As embalagens vazias são descartadas em rio, córrego ou outro curso de água."
  },
  {
    "code" : "lixo-comum",
    "display" : "Lixo comum",
    "definition" : "As embalagens vazias são descartadas junto aos resíduos comuns."
  },
  {
    "code" : "reutiliza",
    "display" : "Reutiliza",
    "definition" : "As embalagens vazias são reutilizadas para outra finalidade."
  },
  {
    "code" : "outro",
    "display" : "Outro",
    "definition" : "Outra forma de destinação não especificada."
  }]
}

```
