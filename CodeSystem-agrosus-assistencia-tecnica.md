# Assistência Técnica AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Assistência Técnica AgroSUS**

## CodeSystem: Assistência Técnica AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-assistencia-tecnica | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSAssistenciaTecnicaCS |

 
Códigos relacionados à assistência e à responsabilidade técnica na produção rural. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSFormacaoResponsavelTecnicoVS](ValueSet-agrosus-formacao-responsavel-tecnico.md)
* [AgroSUSInstituicaoAssistenciaVS](ValueSet-agrosus-instituicao-assistencia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-assistencia-tecnica",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-assistencia-tecnica",
  "version" : "0.1.0",
  "name" : "AgroSUSAssistenciaTecnicaCS",
  "title" : "Assistência Técnica AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T16:38:11+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Códigos relacionados à assistência e à responsabilidade técnica na produção rural.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "instituicao-cati",
    "display" : "CATI"
  },
  {
    "code" : "instituicao-senar",
    "display" : "SENAR"
  },
  {
    "code" : "instituicao-cooperativa",
    "display" : "Cooperativa"
  },
  {
    "code" : "instituicao-empresa-privada",
    "display" : "Empresa privada"
  },
  {
    "code" : "instituicao-consultor-autonomo",
    "display" : "Consultor autônomo"
  },
  {
    "code" : "instituicao-prefeitura",
    "display" : "Prefeitura"
  },
  {
    "code" : "instituicao-outra",
    "display" : "Outra instituição"
  },
  {
    "code" : "formacao-engenheiro-agronomo",
    "display" : "Engenheiro agrônomo"
  },
  {
    "code" : "formacao-tecnico-agricola",
    "display" : "Técnico agrícola"
  },
  {
    "code" : "formacao-outro-habilitado",
    "display" : "Outro profissional habilitado"
  }]
}

```
