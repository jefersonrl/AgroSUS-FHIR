# AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos**

## PlanDefinition: AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/PlanDefinition/AgroSUSEstratificacaoRisco | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSEstratificacaoRisco |

 
Workflow de suporte à decisão: classifica o resultado da colinesterase, define a periodicidade do monitoramento biológico e avalia gatilhos de alerta independentes (sintomas, produto sem EPI adequado, histórico de intoxicação). Apoia — não substitui — o julgamento clínico do profissional assistencial da UBS. 

* **Actions: **: **Url: **
  * : [AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos](PlanDefinition-AgroSUSEstratificacaoRisco.md)
* **Actions: **: **Version: **
  * : 0.1.0
* **Actions: **: **Title: **
  * : AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos
* **Actions: **: **Experimental: **
  * : true
* **Actions: **: **Date: **
  * : 2026-07-21 14:46:27+0000
* **Actions: **: **Publisher: **
  * : Fatec Ferraz de Vasconcelos
* **Actions: **: **Description: **
  * : Workflow de suporte à decisão: classifica o resultado da colinesterase, define a periodicidade do monitoramento biológico e avalia gatilhos de alerta independentes (sintomas, produto sem EPI adequado, histórico de intoxicação). Apoia — não substitui — o julgamento clínico do profissional assistencial da UBS.
* **Actions: **: **Jurisdiction: **
  * : BR
* **Actions: **: **Libraries: **
  * : 
| |
| :--- |
| [Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)](Library-AgroSUSIntoxicacaoLogic.md) |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "AgroSUSEstratificacaoRisco",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/PlanDefinition/AgroSUSEstratificacaoRisco",
  "version" : "0.1.0",
  "name" : "AgroSUSEstratificacaoRisco",
  "title" : "AgroSUS — Vigilância biológica, periodicidade e alertas de intoxicação por defensivos",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "workflow-definition"
    }]
  },
  "status" : "active",
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
  "description" : "Workflow de suporte à decisão: classifica o resultado da colinesterase, define a periodicidade do monitoramento biológico e avalia gatilhos de alerta independentes (sintomas, produto sem EPI adequado, histórico de intoxicação). Apoia — não substitui — o julgamento clínico do profissional assistencial da UBS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "library" : ["https://jefersonrl.github.io/AgroSUS-FHIR/Library/AgroSUSIntoxicacaoLogic"],
  "action" : [{
    "title" : "Obter valor basal e resultado da colinesterase",
    "description" : "Determinar a atividade basal (pré-ocupacional) na admissão; calcular o percentual de inibição do resultado atual em relação ao basal. Registrado via ServiceRequest/AgroSUSSolicitacaoExame e Observation/AgroSUSResultadoLaboratorial."
  },
  {
    "title" : "Classificar o resultado da colinesterase",
    "description" : "Classifica o percentual de inibição conforme o tipo de amostra. REVISAR fonte: NR-7 Quadro I; Nota Informativa 16/2019.",
    "action" : [{
      "title" : "Normal — colinesterase plasmática (inibição <= 50%) ou sangue total (inibição <= 25%)",
      "condition" : [{
        "kind" : "applicability",
        "expression" : {
          "language" : "text/fhirpath",
          "expression" : "%inibicaoPlasmatica <= 50 or %inibicaoSangueTotal <= 25"
        }
      }]
    },
    {
      "title" : "Precaução — redução de 20% a 50%/25% (não atinge o IBMP)",
      "condition" : [{
        "kind" : "applicability",
        "expression" : {
          "language" : "text/fhirpath",
          "expression" : "%inibicaoPlasmatica >= 20 and %inibicaoPlasmatica <= 50"
        }
      }]
    },
    {
      "title" : "Alterado — excede o Índice Biológico Máximo Permitido (IBMP)",
      "condition" : [{
        "kind" : "applicability",
        "expression" : {
          "language" : "text/fhirpath",
          "expression" : "%inibicaoPlasmatica > 50 or %inibicaoSangueTotal > 25"
        }
      }]
    }]
  },
  {
    "title" : "Definir periodicidade do monitoramento biológico",
    "description" : "Periodicidade mínima semestral (NR-7 7.4.2.1), com gatilhos adicionais independentes da rotina.",
    "action" : [{
      "title" : "Rotina — no mínimo a cada 6 meses"
    },
    {
      "title" : "Gatilho adicional — admissional, retorno de afastamento > 30 dias, mudança de função, sintomático, após surto/bloqueio de aplicação, ou retestagem pós-resultado alterado"
    }]
  },
  {
    "title" : "Conduta frente a resultado alterado",
    "description" : "Afastar do contato com o agrotóxico por 30 dias; encaminhar para avaliação clínica e laboratorial; repetir exame em 30 dias; investigar outras causas antes de concluir pela exposição ocupacional. Registrado via CarePlan/AgroSUSPlanoAcompanhamento.",
    "condition" : [{
      "kind" : "applicability",
      "expression" : {
        "language" : "text/fhirpath",
        "expression" : "%inibicaoPlasmatica > 50 or %inibicaoSangueTotal > 25"
      }
    }]
  },
  {
    "title" : "Avaliar gatilhos de alerta independentes",
    "description" : "Gatilhos discretos que não compõem escore (ver ADR-0002). Qualquer gatilho presente prioriza avaliação clínica na UBS.",
    "action" : [{
      "title" : "Sintoma agudo compatível com intoxicação (Seção 13 da anamnese)"
    },
    {
      "title" : "Manuseio de defensivo categoria toxicológica 1 ou 2 sem EPI adequado registrado (Seções 6 e 9)"
    },
    {
      "title" : "Histórico de intoxicação aguda prévia (Seção 14)"
    },
    {
      "title" : "Colinesterase alterada ou em precaução (Ação 2)"
    }]
  },
  {
    "title" : "Registrar e manter o histórico",
    "description" : "Manter registro de exames, afastamentos e condutas por, no mínimo, 20 anos após o desligamento do trabalhador (NR-7 7.4.5.1). Registrado via Provenance/AgroSUSProvenance."
  }]
}

```
