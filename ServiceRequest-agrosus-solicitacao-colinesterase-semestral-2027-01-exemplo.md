# Exemplo de Solicitação de Colinesterase — Rotina Semestral (2027-01) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Solicitação de Colinesterase — Rotina Semestral (2027-01)**

## Example ServiceRequest: Exemplo de Solicitação de Colinesterase — Rotina Semestral (2027-01)

Língua: pt-BR

Perfil: [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame`/SOL-EXAME-2027-000001

**requisition**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial`/REQ-LAB-2027-000001

**status**: Completed

**intent**: Order

**category**: Exame laboratorial

**priority**: Routine

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**occurrence**: 2027-01-20 08:00:00-0300

**authoredOn**: 2027-01-15 09:00:00-0300

**requester**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**reasonCode**: Monitoramento biológico de rotina — periodicidade semestral mínima (NR-7 item 7.4.2.1)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agrosus-solicitacao-colinesterase-semestral-2027-01-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame",
    "value" : "SOL-EXAME-2027-000001"
  }],
  "requisition" : {
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial",
    "value" : "REQ-LAB-2027-000001"
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
  "occurrenceDateTime" : "2027-01-20T08:00:00-03:00",
  "authoredOn" : "2027-01-15T09:00:00-03:00",
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
  }]
}

```
