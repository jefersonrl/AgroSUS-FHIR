# Ocupações permitidas para o ACS no AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ocupações permitidas para o ACS no AgroSUS**

## ValueSet: Ocupações permitidas para o ACS no AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-acs | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSOcupacaoACSVS |

 
Ocupações da Classificação Brasileira de Ocupações permitidas para o profissional que aplica a anamnese AgroSUS. 

 **References** 

* [Função do ACS no AgroSUS](StructureDefinition-agrosus-acs-role.md)

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
  "id" : "agrosus-ocupacao-acs",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-ocupacao-acs",
  "version" : "0.1.0",
  "name" : "AgroSUSOcupacaoACSVS",
  "title" : "Ocupações permitidas para o ACS no AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T18:25:10+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Ocupações da Classificação Brasileira de Ocupações permitidas para o profissional que aplica a anamnese AgroSUS.",
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
        "code" : "515105",
        "display" : "Agente comunitário de saúde"
      },
      {
        "code" : "322255",
        "display" : "Técnico em agente comunitário de saúde"
      }]
    }]
  }
}

```
