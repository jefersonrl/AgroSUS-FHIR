# Exemplo de Plano de Acompanhamento AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Plano de Acompanhamento AgroSUS**

## Example CarePlan: Exemplo de Plano de Acompanhamento AgroSUS

Língua: pt-BR

Perfil: [Plano de Acompanhamento AgroSUS](StructureDefinition-agrosus-plano-acompanhamento.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/plano-acompanhamento`/PLANO-2026-000001

**instantiatesUri**: [https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-07-atualizada-2022-1.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-07-atualizada-2022-1.pdf)

**status**: Active

**intent**: Plan

**category**: Investigação de possível intoxicação

**title**: Acompanhamento clínico e ocupacional AgroSUS

**description**: Plano individual definido pelo médico da UBS para acompanhamento da exposição ocupacional, revisão clínica e reavaliação da necessidade de exames complementares.

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**encounter**: [Atendimento para revisão clínica e laboratorial](Encounter-agrosus-atendimento-ubs-revisao-exames-exemplo.md)

**period**: 2026-07-26 --> 2027-07-20

**created**: 2026-07-26 10:35:00-0300

**author**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**contributor**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)

**addresses**: [Suspeita de intoxicação por pesticida em investigação](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)

**supportingInfo**: 

* [Resposta da anamnese AgroSUS](QuestionnaireResponse-agrosus-anamnese-response-example.md)
* [Solicitação de hemograma completo](ServiceRequest-agrosus-solicitacao-hemograma-exemplo.md)
* [Laudo de hemograma completo](DiagnosticReport-agrosus-laudo-hemograma-exemplo.md)

> **activity****progress**: 
> 

Antecipar o atendimento se houver surgimento ou agravamento de sintomas, nova exposição relevante ou alteração laboratorial.


> **detail****kind**: ServiceRequest**code**: Consultas / Atendimentos / Acompanhamentos**reasonReference**: [Suspeita de intoxicação por pesticida em investigação](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)**status**: Scheduled**scheduled**: 2027-07-01 --> 2027-07-20**performer**: 
* [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)
* [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)
**description**: Realizar reavaliação clínica e ocupacional em até doze meses, repetir a anamnese AgroSUS e avaliar individualmente a necessidade de novos exames.

**note**: , 

> 

O intervalo anual deste exemplo foi definido pelo médico responsável com base na exposição ocupacional e na NR-7. A aplicação utiliza a NR-7 como referência assistencial; a periodicidade deve ser individualizada e não calculada automaticamente.


> 

Quando houver exposição a inseticidas inibidores da colinesterase, o profissional deverá avaliar a aplicação da periodicidade específica dos indicadores biológicos prevista no Anexo I da NR-7.




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "agrosus-plano-acompanhamento-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-plano-acompanhamento"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/plano-acompanhamento",
    "value" : "PLANO-2026-000001"
  }],
  "instantiatesUri" : ["https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-07-atualizada-2022-1.pdf"],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-categoria-plano-cuidado",
      "code" : "investigacao-intoxicacao",
      "display" : "Investigação de possível intoxicação"
    }]
  }],
  "title" : "Acompanhamento clínico e ocupacional AgroSUS",
  "description" : "Plano individual definido pelo médico da UBS para acompanhamento da exposição ocupacional, revisão clínica e reavaliação da necessidade de exames complementares.",
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "encounter" : {
    "reference" : "Encounter/agrosus-atendimento-ubs-revisao-exames-exemplo",
    "display" : "Atendimento para revisão clínica e laboratorial"
  },
  "period" : {
    "start" : "2026-07-26",
    "end" : "2027-07-20"
  },
  "created" : "2026-07-26T10:35:00-03:00",
  "author" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "contributor" : [{
    "reference" : "Organization/agrosus-ubs-exemplo",
    "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
  }],
  "addresses" : [{
    "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
    "display" : "Suspeita de intoxicação por pesticida em investigação"
  }],
  "supportingInfo" : [{
    "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example",
    "display" : "Resposta da anamnese AgroSUS"
  },
  {
    "reference" : "ServiceRequest/agrosus-solicitacao-hemograma-exemplo",
    "display" : "Solicitação de hemograma completo"
  },
  {
    "reference" : "DiagnosticReport/agrosus-laudo-hemograma-exemplo",
    "display" : "Laudo de hemograma completo"
  }],
  "activity" : [{
    "progress" : [{
      "text" : "Antecipar o atendimento se houver surgimento ou agravamento de sintomas, nova exposição relevante ou alteração laboratorial."
    }],
    "detail" : {
      "kind" : "ServiceRequest",
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
          "code" : "0301",
          "display" : "Consultas / Atendimentos / Acompanhamentos"
        }]
      },
      "reasonReference" : [{
        "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
        "display" : "Suspeita de intoxicação por pesticida em investigação"
      }],
      "status" : "scheduled",
      "scheduledPeriod" : {
        "start" : "2027-07-01",
        "end" : "2027-07-20"
      },
      "performer" : [{
        "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
        "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
      },
      {
        "reference" : "Organization/agrosus-ubs-exemplo",
        "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
      }],
      "description" : "Realizar reavaliação clínica e ocupacional em até doze meses, repetir a anamnese AgroSUS e avaliar individualmente a necessidade de novos exames."
    }
  }],
  "note" : [{
    "text" : "O intervalo anual deste exemplo foi definido pelo médico responsável com base na exposição ocupacional e na NR-7. A aplicação utiliza a NR-7 como referência assistencial; a periodicidade deve ser individualizada e não calculada automaticamente."
  },
  {
    "text" : "Quando houver exposição a inseticidas inibidores da colinesterase, o profissional deverá avaliar a aplicação da periodicidade específica dos indicadores biológicos prevista no Anexo I da NR-7."
  }]
}

```
