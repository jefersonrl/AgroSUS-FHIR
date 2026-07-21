# Condições de saúde e sintomas AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Condições de saúde e sintomas AgroSUS**

## CodeSystem: Condições de saúde e sintomas AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSCondicoesSintomasCS |

 
Terminologia dos itens de condições de saúde e sintomas referidos no formulário de anamnese AgroSUS. Os códigos representam respostas do instrumento e não diagnósticos clínicos confirmados. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSCondicaoSaudeReferidaVS](ValueSet-agrosus-condicao-saude-referida.md)
* [AgroSUSSintomaUltimos30DiasVS](ValueSet-agrosus-sintoma-ultimos-30-dias.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-condicoes-sintomas",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
  "version" : "0.1.0",
  "name" : "AgroSUSCondicoesSintomasCS",
  "title" : "Condições de saúde e sintomas AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T12:21:04+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia dos itens de condições de saúde e sintomas referidos no formulário de anamnese AgroSUS. Os códigos representam respostas do instrumento e não diagnósticos clínicos confirmados.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 28,
  "concept" : [{
    "code" : "condicao-hipertensao",
    "display" : "Hipertensão"
  },
  {
    "code" : "condicao-diabetes",
    "display" : "Diabetes"
  },
  {
    "code" : "condicao-doenca-hepatica",
    "display" : "Doença hepática"
  },
  {
    "code" : "condicao-doenca-renal",
    "display" : "Doença renal"
  },
  {
    "code" : "condicao-doenca-neurologica",
    "display" : "Doença neurológica"
  },
  {
    "code" : "condicao-cancer",
    "display" : "Câncer"
  },
  {
    "code" : "condicao-gestante-lactante",
    "display" : "Gestante ou lactante"
  },
  {
    "code" : "condicao-nenhuma",
    "display" : "Nenhuma condição referida"
  },
  {
    "code" : "sintoma-cefaleia-frequente",
    "display" : "Dor de cabeça (cefaleia) frequente"
  },
  {
    "code" : "sintoma-tontura-vertigem",
    "display" : "Tontura ou vertigem"
  },
  {
    "code" : "sintoma-nauseas",
    "display" : "Náuseas"
  },
  {
    "code" : "sintoma-vomitos",
    "display" : "Vômitos"
  },
  {
    "code" : "sintoma-diarreia-colicas-abdominais",
    "display" : "Diarreia ou cólicas abdominais"
  },
  {
    "code" : "sintoma-tremores-contracoes-involuntarias",
    "display" : "Tremores ou contrações musculares involuntárias"
  },
  {
    "code" : "sintoma-fraqueza-cansaco-extremo",
    "display" : "Fraqueza ou cansaço extremo"
  },
  {
    "code" : "sintoma-diaforese",
    "display" : "Suor excessivo (diaforese)"
  },
  {
    "code" : "sintoma-hipersalivacao",
    "display" : "Salivação excessiva (hipersalivação)"
  },
  {
    "code" : "sintoma-irritacao-ocular",
    "display" : "Irritação nos olhos, lacrimejamento ou hiperemia"
  },
  {
    "code" : "sintoma-irritacao-dermatite-pele",
    "display" : "Irritação ou dermatite na pele"
  },
  {
    "code" : "sintoma-dispneia",
    "display" : "Falta de ar ou dispneia"
  },
  {
    "code" : "sintoma-tosse-frequente",
    "display" : "Tosse seca ou produtiva frequente"
  },
  {
    "code" : "sintoma-palpitacoes",
    "display" : "Palpitações ou batimentos irregulares"
  },
  {
    "code" : "sintoma-alteracao-visual",
    "display" : "Alteração visual ou visão turva"
  },
  {
    "code" : "sintoma-confusao-desorientacao",
    "display" : "Confusão mental ou desorientação"
  },
  {
    "code" : "sintoma-dificuldade-memoria-concentracao",
    "display" : "Dificuldade de memória ou concentração"
  },
  {
    "code" : "sintoma-disturbios-sono",
    "display" : "Distúrbios do sono, insônia ou hipersonia"
  },
  {
    "code" : "sintoma-formigamento-membros",
    "display" : "Formigamento nos membros"
  },
  {
    "code" : "sintoma-irritabilidade-alteracoes-humor",
    "display" : "Irritabilidade ou alterações de humor"
  }]
}

```
