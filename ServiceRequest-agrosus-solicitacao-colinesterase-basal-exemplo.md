# Exemplo de Solicitação de Colinesterase — Valor Basal Admissional - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Solicitação de Colinesterase — Valor Basal Admissional**

## Example ServiceRequest: Exemplo de Solicitação de Colinesterase — Valor Basal Admissional

Língua: pt-BR

Perfil: [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame`/SOL-EXAME-2024-000001

**requisition**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial`/REQ-LAB-2024-000001

**status**: Completed

**intent**: Order

**category**: Exame laboratorial

**priority**: Routine

**code**: Colinesterases eritrocitária e plasmática (painel)

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**occurrence**: 2024-01-15 07:30:00-0300

**authoredOn**: 2024-01-10 08:00:00-0300

**requester**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**reasonCode**: Exame admissional de colinesterase, antes do início do manuseio de organofosforados/carbamatos

**note**: 

> 

Valor basal — anterior ao cadastro da trabalhadora no AgroSUS em 2026; registrado retroativamente a partir do prontuário do PCMSO, conforme NR-7 item 7.4.1.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agrosus-solicitacao-colinesterase-basal-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame",
    "value" : "SOL-EXAME-2024-000001"
  }],
  "requisition" : {
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial",
    "value" : "REQ-LAB-2024-000001"
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
      "code" : "35558-6",
      "display" : "Cholinesterase [Enzymatic activity/volume] in Serum or Plasma and Erythrocytes"
    }],
    "text" : "Colinesterases eritrocitária e plasmática (painel)"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "occurrenceDateTime" : "2024-01-15T07:30:00-03:00",
  "authoredOn" : "2024-01-10T08:00:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "reasonCode" : [{
    "text" : "Exame admissional de colinesterase, antes do início do manuseio de organofosforados/carbamatos"
  }],
  "note" : [{
    "text" : "Valor basal — anterior ao cadastro da trabalhadora no AgroSUS em 2026; registrado retroativamente a partir do prontuário do PCMSO, conforme NR-7 item 7.4.1."
  }]
}

```
