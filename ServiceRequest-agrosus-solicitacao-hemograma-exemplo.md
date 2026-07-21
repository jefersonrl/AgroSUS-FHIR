# Exemplo de Solicitação de Hemograma AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Solicitação de Hemograma AgroSUS**

## Example ServiceRequest: Exemplo de Solicitação de Hemograma AgroSUS

Língua: pt-BR

Perfil: [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame`/SOL-EXAME-2026-000001

**requisition**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial`/REQ-LAB-2026-000001

**status**: Completed

**intent**: Order

**category**: Exame laboratorial

**priority**: Routine

**code**: Hemograma completo

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**encounter**: [Avaliação clínica na UBS após visita do ACS](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md)

**occurrence**: 2026-07-25 08:00:00-0300

**authoredOn**: 2026-07-20 11:00:00-0300

**requester**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**reasonCode**: Investigação clínica e laboratorial de possível intoxicação relacionada à exposição ocupacional a defensivos agrícolas

**reasonReference**: [Suspeita de intoxicação por pesticida em investigação](Condition-agrosus-intoxicacao-pesticida-suspeita-exemplo.md)

**supportingInfo**: [Resposta da anamnese AgroSUS](QuestionnaireResponse-agrosus-anamnese-response-example.md)

**note**: 

> 

Solicitação realizada após avaliação clínica individual pela equipe da UBS.


**patientInstruction**: Comparecer ao serviço indicado com documento de identificação e a requisição do exame.



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agrosus-solicitacao-hemograma-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame",
    "value" : "SOL-EXAME-2026-000001"
  }],
  "requisition" : {
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial",
    "value" : "REQ-LAB-2026-000001"
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure"
    }],
    "text" : "Exame laboratorial"
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "58410-2",
      "display" : "CBC (hemogram) Sg Auto"
    }],
    "text" : "Hemograma completo"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "encounter" : {
    "reference" : "Encounter/agrosus-atendimento-ubs-avaliacao-exemplo",
    "display" : "Avaliação clínica na UBS após visita do ACS"
  },
  "occurrenceDateTime" : "2026-07-25T08:00:00-03:00",
  "authoredOn" : "2026-07-20T11:00:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "reasonCode" : [{
    "text" : "Investigação clínica e laboratorial de possível intoxicação relacionada à exposição ocupacional a defensivos agrícolas"
  }],
  "reasonReference" : [{
    "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
    "display" : "Suspeita de intoxicação por pesticida em investigação"
  }],
  "supportingInfo" : [{
    "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example",
    "display" : "Resposta da anamnese AgroSUS"
  }],
  "note" : [{
    "text" : "Solicitação realizada após avaliação clínica individual pela equipe da UBS."
  }],
  "patientInstruction" : "Comparecer ao serviço indicado com documento de identificação e a requisição do exame."
}

```
