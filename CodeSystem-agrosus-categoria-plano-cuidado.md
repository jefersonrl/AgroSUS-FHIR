# Categorias de Plano de Cuidado AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Categorias de Plano de Cuidado AgroSUS**

## CodeSystem: Categorias de Plano de Cuidado AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-categoria-plano-cuidado | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSCategoriaPlanoCuidadoCS |

 
Categorias utilizadas para classificar os planos longitudinais de acompanhamento do trabalhador rural. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSCategoriaPlanoCuidadoVS](ValueSet-agrosus-categoria-plano-cuidado.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-categoria-plano-cuidado",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-categoria-plano-cuidado",
  "version" : "0.1.0",
  "name" : "AgroSUSCategoriaPlanoCuidadoCS",
  "title" : "Categorias de Plano de Cuidado AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T03:04:10+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Categorias utilizadas para classificar os planos longitudinais de acompanhamento do trabalhador rural.",
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
    "code" : "monitoramento-exposicao",
    "display" : "Monitoramento de exposição ocupacional",
    "definition" : "Acompanhamento longitudinal de trabalhador exposto a defensivos agrícolas, sem suspeita clínica atual de intoxicação."
  },
  {
    "code" : "investigacao-intoxicacao",
    "display" : "Investigação de possível intoxicação",
    "definition" : "Plano destinado à investigação e ao acompanhamento de uma suspeita clínica de intoxicação por pesticida."
  },
  {
    "code" : "seguimento-pos-intoxicacao",
    "display" : "Seguimento após intoxicação",
    "definition" : "Acompanhamento longitudinal após confirmação ou tratamento de intoxicação por pesticida."
  }]
}

```
