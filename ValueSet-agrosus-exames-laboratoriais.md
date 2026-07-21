# Exames Laboratoriais AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exames Laboratoriais AgroSUS**

## ValueSet: Exames Laboratoriais AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-exames-laboratoriais | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSExamesLaboratoriaisVS |

 
Exames e painéis laboratoriais previstos para o acompanhamento assistencial dos trabalhadores rurais no AgroSUS. 

 **References** 

* [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md)
* [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "agrosus-exames-laboratoriais",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-exames-laboratoriais",
  "version" : "0.1.0",
  "name" : "AgroSUSExamesLaboratoriaisVS",
  "title" : "Exames Laboratoriais AgroSUS",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-21T03:24:49+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Exames e painéis laboratoriais previstos para o acompanhamento assistencial dos trabalhadores rurais no AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "58410-2"
      },
      {
        "code" : "1920-8"
      },
      {
        "code" : "1742-6"
      },
      {
        "code" : "2324-2"
      },
      {
        "code" : "6768-6"
      },
      {
        "code" : "1751-7"
      },
      {
        "code" : "2160-0"
      },
      {
        "code" : "3091-6"
      },
      {
        "code" : "34535-5"
      },
      {
        "code" : "1558-6"
      },
      {
        "code" : "35558-6"
      },
      {
        "code" : "6301-6"
      },
      {
        "code" : "35501-6"
      }]
    }]
  }
}

```
