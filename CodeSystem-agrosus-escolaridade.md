# Escolaridade AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Escolaridade AgroSUS**

## CodeSystem: Escolaridade AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-escolaridade | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSEscolaridadeCS |

 
Categorias de escolaridade utilizadas no formulário de anamnese AgroSUS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSEscolaridadeVS](ValueSet-agrosus-escolaridade.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-escolaridade",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-escolaridade",
  "version" : "0.1.0",
  "name" : "AgroSUSEscolaridadeCS",
  "title" : "Escolaridade AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T14:46:27+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Categorias de escolaridade utilizadas no formulário de anamnese AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "sem-escolaridade",
    "display" : "Sem escolaridade",
    "definition" : "Pessoa que declara não possuir escolaridade formal."
  },
  {
    "code" : "fundamental-incompleto",
    "display" : "Ensino fundamental incompleto",
    "definition" : "Pessoa que iniciou, mas não concluiu o ensino fundamental."
  },
  {
    "code" : "fundamental-completo",
    "display" : "Ensino fundamental completo",
    "definition" : "Pessoa que concluiu o ensino fundamental."
  },
  {
    "code" : "medio",
    "display" : "Ensino médio",
    "definition" : "Pessoa que declara escolaridade em nível de ensino médio."
  },
  {
    "code" : "superior",
    "display" : "Ensino superior",
    "definition" : "Pessoa que declara escolaridade em nível de ensino superior."
  }]
}

```
