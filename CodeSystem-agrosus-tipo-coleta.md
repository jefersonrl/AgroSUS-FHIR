# Tipos de Coleta AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Tipos de Coleta AgroSUS**

## CodeSystem: Tipos de Coleta AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-tipo-coleta | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSTipoColetaCS |

 
Modalidades de aplicação do formulário de anamnese ocupacional e ambiental do AgroSUS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSTipoColetaVS](ValueSet-agrosus-tipo-coleta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-tipo-coleta",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-tipo-coleta",
  "version" : "0.1.0",
  "name" : "AgroSUSTipoColetaCS",
  "title" : "Tipos de Coleta AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T12:10:06+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Modalidades de aplicação do formulário de anamnese ocupacional e ambiental do AgroSUS.",
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
    "code" : "cadastro-inicial",
    "display" : "Cadastro inicial",
    "definition" : "Primeira aplicação do formulário ao trabalhador rural."
  },
  {
    "code" : "acompanhamento-semestral",
    "display" : "Acompanhamento semestral",
    "definition" : "Aplicação periódica semestral para acompanhamento do trabalhador rural."
  },
  {
    "code" : "visita-alerta",
    "display" : "Visita de alerta",
    "definition" : "Aplicação motivada por alerta, alteração clínica ou necessidade de reavaliação."
  }]
}

```
