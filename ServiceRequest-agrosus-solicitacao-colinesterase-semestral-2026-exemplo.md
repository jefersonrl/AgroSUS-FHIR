# Exemplo de Solicitação de Colinesterase — Rotina Semestral (2026-07) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Solicitação de Colinesterase — Rotina Semestral (2026-07)**

## Example ServiceRequest: Exemplo de Solicitação de Colinesterase — Rotina Semestral (2026-07)

Língua: pt-BR

Perfil: [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame`/SOL-EXAME-2026-000002

**requisition**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial`/REQ-LAB-2026-000002

**status**: Completed

**intent**: Order

**category**: Exame laboratorial

**priority**: Routine

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**encounter**: [Avaliação clínica na UBS após visita do ACS](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md)

**occurrence**: 2026-07-25 08:15:00-0300

**authoredOn**: 2026-07-20 11:05:00-0300

**requester**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**reasonCode**: Monitoramento biológico de rotina — periodicidade semestral mínima (NR-7 item 7.4.2.1)

**note**: 

> 

Exame de rotina semestral, solicitado na mesma consulta em que foi pedido o hemograma.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agrosus-solicitacao-colinesterase-semestral-2026-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame",
    "value" : "SOL-EXAME-2026-000002"
  }],
  "requisition" : {
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial",
    "value" : "REQ-LAB-2026-000002"
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
      "code" : "2099-0",
      "display" : "Cholinesterase [Enzymatic activity/volume] in Serum or Plasma"
    }],
    "text" : "Colinesterase plasmática"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "encounter" : {
    "reference" : "Encounter/agrosus-atendimento-ubs-avaliacao-exemplo",
    "display" : "Avaliação clínica na UBS após visita do ACS"
  },
  "occurrenceDateTime" : "2026-07-25T08:15:00-03:00",
  "authoredOn" : "2026-07-20T11:05:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "reasonCode" : [{
    "text" : "Monitoramento biológico de rotina — periodicidade semestral mínima (NR-7 item 7.4.2.1)"
  }],
  "note" : [{
    "text" : "Exame de rotina semestral, solicitado na mesma consulta em que foi pedido o hemograma."
  }]
}

```
