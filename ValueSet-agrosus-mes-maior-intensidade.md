# Meses de maior intensidade de uso - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Meses de maior intensidade de uso**

## ValueSet: Meses de maior intensidade de uso 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-mes-maior-intensidade | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSMesMaiorIntensidadeVS |

 
Meses do ano com maior intensidade de utilização de defensivos agrícolas. 

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
  "id" : "agrosus-mes-maior-intensidade",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-mes-maior-intensidade",
  "version" : "0.1.0",
  "name" : "AgroSUSMesMaiorIntensidadeVS",
  "title" : "Meses de maior intensidade de uso",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T16:50:13+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Meses do ano com maior intensidade de utilização de defensivos agrícolas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao",
      "concept" : [{
        "code" : "janeiro"
      },
      {
        "code" : "fevereiro"
      },
      {
        "code" : "marco"
      },
      {
        "code" : "abril"
      },
      {
        "code" : "maio"
      },
      {
        "code" : "junho"
      },
      {
        "code" : "julho"
      },
      {
        "code" : "agosto"
      },
      {
        "code" : "setembro"
      },
      {
        "code" : "outubro"
      },
      {
        "code" : "novembro"
      },
      {
        "code" : "dezembro"
      }]
    }]
  }
}

```
