# Intoxicação por pesticidas AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Intoxicação por pesticidas AgroSUS**

## ValueSet: Intoxicação por pesticidas AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-intoxicacao-pesticida | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSIntoxicacaoPesticidaVS |

 
Códigos CID-10 utilizados para representar suspeita ou confirmação clínica de efeito tóxico de pesticidas. 

 **References** 

* [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md)

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
  "id" : "agrosus-intoxicacao-pesticida",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-intoxicacao-pesticida",
  "version" : "0.1.0",
  "name" : "AgroSUSIntoxicacaoPesticidaVS",
  "title" : "Intoxicação por pesticidas AgroSUS",
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
  "description" : "Códigos CID-10 utilizados para representar suspeita ou confirmação clínica de efeito tóxico de pesticidas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "concept" : [{
        "code" : "T60.0",
        "display" : "Efeito tóxico de inseticidas organofosforados e carbamatos"
      },
      {
        "code" : "T60.1",
        "display" : "Efeito tóxico de inseticidas halogenados"
      },
      {
        "code" : "T60.2",
        "display" : "Efeito tóxico de outros inseticidas"
      },
      {
        "code" : "T60.3",
        "display" : "Efeito tóxico de herbicidas e fungicidas"
      },
      {
        "code" : "T60.4",
        "display" : "Efeito tóxico de rodenticidas"
      },
      {
        "code" : "T60.8",
        "display" : "Efeito tóxico de outros pesticidas"
      },
      {
        "code" : "T60.9",
        "display" : "Efeito tóxico de pesticida não especificado"
      }]
    }]
  }
}

```
