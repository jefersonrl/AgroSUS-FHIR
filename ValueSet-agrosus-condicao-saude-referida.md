# Condições de saúde referidas - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condições de saúde referidas**

## ValueSet: Condições de saúde referidas 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-condicao-saude-referida | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSCondicaoSaudeReferidaVS |

 
Condições de saúde preexistentes declaradas pelo trabalhador durante a anamnese. 

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
  "id" : "agrosus-condicao-saude-referida",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-condicao-saude-referida",
  "version" : "0.1.0",
  "name" : "AgroSUSCondicaoSaudeReferidaVS",
  "title" : "Condições de saúde referidas",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T13:39:22+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Condições de saúde preexistentes declaradas pelo trabalhador durante a anamnese.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
      "concept" : [{
        "code" : "condicao-hipertensao"
      },
      {
        "code" : "condicao-diabetes"
      },
      {
        "code" : "condicao-doenca-hepatica"
      },
      {
        "code" : "condicao-doenca-renal"
      },
      {
        "code" : "condicao-doenca-neurologica"
      },
      {
        "code" : "condicao-cancer"
      },
      {
        "code" : "condicao-gestante-lactante"
      },
      {
        "code" : "condicao-nenhuma"
      }]
    }]
  }
}

```
