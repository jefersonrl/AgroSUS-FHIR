# Sinais e sintomas dos últimos 30 dias - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sinais e sintomas dos últimos 30 dias**

## ValueSet: Sinais e sintomas dos últimos 30 dias 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-sintoma-ultimos-30-dias | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSSintomaUltimos30DiasVS |

 
Sinais e sintomas investigados pelo formulário AgroSUS, sem significado diagnóstico isolado. 

 **References** 

Este conjunto de valores não é utilizado aqui; pode ser utilizado noutro local (por exemplo, especificações e/ou implementações que utilizem este conteúdo)

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
  "id" : "agrosus-sintoma-ultimos-30-dias",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-sintoma-ultimos-30-dias",
  "version" : "0.1.0",
  "name" : "AgroSUSSintomaUltimos30DiasVS",
  "title" : "Sinais e sintomas dos últimos 30 dias",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Sinais e sintomas investigados pelo formulário AgroSUS, sem significado diagnóstico isolado.",
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
        "code" : "sintoma-cefaleia-frequente"
      },
      {
        "code" : "sintoma-tontura-vertigem"
      },
      {
        "code" : "sintoma-nauseas"
      },
      {
        "code" : "sintoma-vomitos"
      },
      {
        "code" : "sintoma-diarreia-colicas-abdominais"
      },
      {
        "code" : "sintoma-tremores-contracoes-involuntarias"
      },
      {
        "code" : "sintoma-fraqueza-cansaco-extremo"
      },
      {
        "code" : "sintoma-diaforese"
      },
      {
        "code" : "sintoma-hipersalivacao"
      },
      {
        "code" : "sintoma-irritacao-ocular"
      },
      {
        "code" : "sintoma-irritacao-dermatite-pele"
      },
      {
        "code" : "sintoma-dispneia"
      },
      {
        "code" : "sintoma-tosse-frequente"
      },
      {
        "code" : "sintoma-palpitacoes"
      },
      {
        "code" : "sintoma-alteracao-visual"
      },
      {
        "code" : "sintoma-confusao-desorientacao"
      },
      {
        "code" : "sintoma-dificuldade-memoria-concentracao"
      },
      {
        "code" : "sintoma-disturbios-sono"
      },
      {
        "code" : "sintoma-formigamento-membros"
      },
      {
        "code" : "sintoma-irritabilidade-alteracoes-humor"
      }]
    }]
  }
}

```
