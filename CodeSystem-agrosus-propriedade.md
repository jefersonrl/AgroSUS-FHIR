# Terminologia da Propriedade Rural AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Terminologia da Propriedade Rural AgroSUS**

## CodeSystem: Terminologia da Propriedade Rural AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-propriedade | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSPropriedadeCS |

 
Códigos utilizados para caracterizar propriedades rurais no formulário AgroSUS. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSAtividadeAgricolaVS](ValueSet-agrosus-atividade-agricola.md)
* [AgroSUSFonteAguaVS](ValueSet-agrosus-fonte-agua.md)
* [AgroSUSSituacaoPosseVS](ValueSet-agrosus-situacao-posse.md)
* [AgroSUSTipoProducaoVS](ValueSet-agrosus-tipo-producao.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-propriedade",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-propriedade",
  "version" : "0.1.0",
  "name" : "AgroSUSPropriedadeCS",
  "title" : "Terminologia da Propriedade Rural AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Códigos utilizados para caracterizar propriedades rurais no formulário AgroSUS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 24,
  "concept" : [{
    "code" : "posse-proprietario",
    "display" : "Proprietário"
  },
  {
    "code" : "posse-arrendatario",
    "display" : "Arrendatário"
  },
  {
    "code" : "posse-meeiro",
    "display" : "Meeiro"
  },
  {
    "code" : "posse-assentado",
    "display" : "Assentado"
  },
  {
    "code" : "posse-cedida",
    "display" : "Terra cedida"
  },
  {
    "code" : "posse-outra",
    "display" : "Outra situação de posse"
  },
  {
    "code" : "atividade-lavoura-temporaria",
    "display" : "Lavoura temporária"
  },
  {
    "code" : "atividade-lavoura-permanente",
    "display" : "Lavoura permanente"
  },
  {
    "code" : "atividade-horticultura",
    "display" : "Horticultura"
  },
  {
    "code" : "atividade-fruticultura",
    "display" : "Fruticultura"
  },
  {
    "code" : "atividade-pecuaria",
    "display" : "Pecuária"
  },
  {
    "code" : "atividade-outra",
    "display" : "Outra atividade agrícola"
  },
  {
    "code" : "producao-convencional",
    "display" : "Convencional"
  },
  {
    "code" : "producao-organica",
    "display" : "Orgânica"
  },
  {
    "code" : "producao-agroecologica",
    "display" : "Agroecológica"
  },
  {
    "code" : "producao-integrada",
    "display" : "Integrada"
  },
  {
    "code" : "producao-outra",
    "display" : "Outro tipo de produção"
  },
  {
    "code" : "agua-rede-publica",
    "display" : "Rede pública"
  },
  {
    "code" : "agua-poco-artesiano",
    "display" : "Poço artesiano"
  },
  {
    "code" : "agua-poco-comum",
    "display" : "Poço comum"
  },
  {
    "code" : "agua-rio-corrego",
    "display" : "Rio ou córrego"
  },
  {
    "code" : "agua-acude-represa",
    "display" : "Açude ou represa"
  },
  {
    "code" : "agua-cisterna",
    "display" : "Cisterna"
  },
  {
    "code" : "agua-outra",
    "display" : "Outra fonte de água"
  }]
}

```
