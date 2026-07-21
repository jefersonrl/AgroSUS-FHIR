# Classificação Toxicológica de Defensivos Agrícolas - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Classificação Toxicológica de Defensivos Agrícolas**

## CodeSystem: Classificação Toxicológica de Defensivos Agrícolas (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-classificacao-toxicologica | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSClassificacaoToxicologicaCS |
| **Copyright/Legal**: Classificação conforme a RDC Anvisa nº 294/2019. | |

 
Representação FHIR das categorias de classificação toxicológica estabelecidas pela Anvisa. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSClassificacaoToxicologicaVS](ValueSet-agrosus-classificacao-toxicologica.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-classificacao-toxicologica",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-classificacao-toxicologica",
  "version" : "0.1.0",
  "name" : "AgroSUSClassificacaoToxicologicaCS",
  "title" : "Classificação Toxicológica de Defensivos Agrícolas",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Representação FHIR das categorias de classificação toxicológica estabelecidas pela Anvisa.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "copyright" : "Classificação conforme a RDC Anvisa nº 294/2019.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "categoria-1",
    "display" : "Categoria 1 — Produto extremamente tóxico",
    "definition" : "Produto extremamente tóxico, identificado por faixa vermelha."
  },
  {
    "code" : "categoria-2",
    "display" : "Categoria 2 — Produto altamente tóxico",
    "definition" : "Produto altamente tóxico, identificado por faixa vermelha."
  },
  {
    "code" : "categoria-3",
    "display" : "Categoria 3 — Produto moderadamente tóxico",
    "definition" : "Produto moderadamente tóxico, identificado por faixa amarela."
  },
  {
    "code" : "categoria-4",
    "display" : "Categoria 4 — Produto pouco tóxico",
    "definition" : "Produto pouco tóxico, identificado por faixa azul."
  },
  {
    "code" : "categoria-5",
    "display" : "Categoria 5 — Produto improvável de causar dano agudo",
    "definition" : "Produto improvável de causar dano agudo, identificado por faixa azul."
  },
  {
    "code" : "nao-classificado",
    "display" : "Produto não classificado",
    "definition" : "Produto não classificado, identificado por faixa verde."
  }]
}

```
