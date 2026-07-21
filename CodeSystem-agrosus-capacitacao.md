# Temas de Capacitação AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Temas de Capacitação AgroSUS**

## CodeSystem: Temas de Capacitação AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-capacitacao | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSCapacitacaoCS |

 
Temas abordados em capacitações sobre o uso seguro de defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSTemasCapacitacaoVS](ValueSet-agrosus-temas-capacitacao.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-capacitacao",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-capacitacao",
  "version" : "0.1.0",
  "name" : "AgroSUSCapacitacaoCS",
  "title" : "Temas de Capacitação AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T12:31:15+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Temas abordados em capacitações sobre o uso seguro de defensivos agrícolas.",
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
    "code" : "uso-manuseio-seguro",
    "display" : "Uso e manuseio seguro",
    "definition" : "Orientações para uso e manuseio seguro de defensivos agrícolas."
  },
  {
    "code" : "epis",
    "display" : "Equipamentos de proteção individual",
    "definition" : "Orientações sobre seleção, utilização e conservação de EPIs."
  },
  {
    "code" : "armazenamento",
    "display" : "Armazenamento",
    "definition" : "Orientações sobre armazenamento seguro de defensivos agrícolas."
  },
  {
    "code" : "descarte-embalagens",
    "display" : "Descarte de embalagens",
    "definition" : "Orientações sobre lavagem, devolução e destinação de embalagens vazias."
  },
  {
    "code" : "primeiros-socorros",
    "display" : "Primeiros socorros",
    "definition" : "Orientações sobre primeiros socorros relacionados à exposição."
  },
  {
    "code" : "outros",
    "display" : "Outros temas",
    "definition" : "Outros temas abordados durante a capacitação."
  }]
}

```
