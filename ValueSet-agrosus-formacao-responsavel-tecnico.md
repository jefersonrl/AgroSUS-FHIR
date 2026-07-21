# Formação do Responsável Técnico - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Formação do Responsável Técnico**

## ValueSet: Formação do Responsável Técnico (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-formacao-responsavel-tecnico | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSFormacaoResponsavelTecnicoVS |

 
Formações profissionais previstas para o responsável técnico da produção. 

 **References** 

* [Formulário de Anamnese Ocupacional e Ambiental AgroSUS](Questionnaire-agrosus-anamnese.md)

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
  "id" : "agrosus-formacao-responsavel-tecnico",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-formacao-responsavel-tecnico",
  "version" : "0.1.0",
  "name" : "AgroSUSFormacaoResponsavelTecnicoVS",
  "title" : "Formação do Responsável Técnico",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T13:03:45+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Formações profissionais previstas para o responsável técnico da produção.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-assistencia-tecnica",
      "concept" : [{
        "code" : "formacao-engenheiro-agronomo"
      },
      {
        "code" : "formacao-tecnico-agricola"
      },
      {
        "code" : "formacao-outro-habilitado"
      }]
    }]
  }
}

```
