# Ocupações dos profissionais assistenciais da UBS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Ocupações dos profissionais assistenciais da UBS**

## ValueSet: Ocupações dos profissionais assistenciais da UBS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-profissional-ubs | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSOcupacaoProfissionalUBSVS |

 
Ocupações CBO permitidas para profissionais assistenciais que utilizam o dashboard AgroSUS na Unidade Básica de Saúde. 

 **References** 

* [Função do Profissional Assistencial da UBS AgroSUS](StructureDefinition-agrosus-profissional-ubs-role.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "agrosus-ocupacao-profissional-ubs",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-profissional-ubs",
  "version" : "0.1.0",
  "name" : "AgroSUSOcupacaoProfissionalUBSVS",
  "title" : "Ocupações dos profissionais assistenciais da UBS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T03:34:20+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Ocupações CBO permitidas para profissionais assistenciais que utilizam o dashboard AgroSUS na Unidade Básica de Saúde.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "concept" : [{
        "code" : "225125",
        "display" : "Médico clínico"
      },
      {
        "code" : "225130",
        "display" : "Médico de família e comunidade"
      },
      {
        "code" : "225142",
        "display" : "Médico da estratégia de saúde da família"
      },
      {
        "code" : "223505",
        "display" : "Enfermeiro"
      },
      {
        "code" : "322205",
        "display" : "Técnico de enfermagem"
      }]
    }]
  }
}

```
