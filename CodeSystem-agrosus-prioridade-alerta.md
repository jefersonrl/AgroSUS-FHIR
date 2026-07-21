# Prioridade de Alerta AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prioridade de Alerta AgroSUS**

## CodeSystem: Prioridade de Alerta AgroSUS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-prioridade-alerta | *Version*:0.1.0 |
| Draft as of 2026-07-21 | *Computable Name*:AgroSUSPrioridadeAlertaCS |

 
Níveis de prioridade clínica para os alertas gerados pela lógica de decisão do AgroSUS (colinesterase alterada, sintoma agudo, produto categoria 1/2 sem EPI, histórico de intoxicação). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSPrioridadeAlertaVS](ValueSet-agrosus-prioridade-alerta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-prioridade-alerta",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-prioridade-alerta",
  "version" : "0.1.0",
  "name" : "AgroSUSPrioridadeAlertaCS",
  "title" : "Prioridade de Alerta AgroSUS",
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
  "description" : "Níveis de prioridade clínica para os alertas gerados pela lógica de decisão do AgroSUS (colinesterase alterada, sintoma agudo, produto categoria 1/2 sem EPI, histórico de intoxicação).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "critica",
    "display" : "Crítica",
    "definition" : "Achado com indicação de afastamento imediato do contato com o defensivo e avaliação assistencial prioritária (ex.: colinesterase alterada; sintoma agudo compatível com intoxicação)."
  },
  {
    "code" : "atencao",
    "display" : "Atenção",
    "definition" : "Achado que exige verificação ou reforço de medidas de proteção, sem indicação de afastamento imediato (ex.: precaução de colinesterase entre 20% e 50%/25%)."
  },
  {
    "code" : "informativa",
    "display" : "Informativa",
    "definition" : "Achado registrado para acompanhamento longitudinal, sem conduta imediata associada."
  }]
}

```
