# Exemplo de Solicitação de Retestagem de Colinesterase Pós-Resultado Alterado - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Solicitação de Retestagem de Colinesterase Pós-Resultado Alterado**

## Example ServiceRequest: Exemplo de Solicitação de Retestagem de Colinesterase Pós-Resultado Alterado

Língua: pt-BR

Perfil: [Solicitação de Exame AgroSUS](StructureDefinition-agrosus-solicitacao-exame.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame`/SOL-EXAME-2027-000002

**requisition**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial`/REQ-LAB-2027-000002

**status**: Active

**intent**: Order

**category**: Exame laboratorial

**priority**: Urgent

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**occurrence**: 2027-08-21 08:00:00-0300

**authoredOn**: 2027-07-22 13:10:00-0300

**requester**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**reasonCode**: Retestagem 30 dias após resultado alterado de colinesterase plasmática, conforme Nota Informativa 16/2019, Anexo III item 3

**reasonReference**: [Resultado alterado de colinesterase plasmática (inibição de 58,54%)](Observation-agrosus-resultado-colinesterase-alterada-exemplo.md)

**note**: 

> 

Repetição do exame 30 dias após o resultado alterado, antes do retorno ao manuseio de organofosforados/carbamatos (DT-4, DT-5).


**patientInstruction**: Manter afastamento do contato com o defensivo agrícola até a reavaliação. Comparecer ao serviço indicado na data marcada com documento de identificação e a requisição do exame.



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "agrosus-solicitacao-colinesterase-retestagem-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-solicitacao-exame"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/solicitacao-exame",
    "value" : "SOL-EXAME-2027-000002"
  }],
  "requisition" : {
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/requisicao-laboratorial",
    "value" : "REQ-LAB-2027-000002"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure"
    }],
    "text" : "Exame laboratorial"
  }],
  "priority" : "urgent",
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
  "occurrenceDateTime" : "2027-08-21T08:00:00-03:00",
  "authoredOn" : "2027-07-22T13:10:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "reasonCode" : [{
    "text" : "Retestagem 30 dias após resultado alterado de colinesterase plasmática, conforme Nota Informativa 16/2019, Anexo III item 3"
  }],
  "reasonReference" : [{
    "reference" : "Observation/agrosus-resultado-colinesterase-alterada-exemplo",
    "display" : "Resultado alterado de colinesterase plasmática (inibição de 58,54%)"
  }],
  "note" : [{
    "text" : "Repetição do exame 30 dias após o resultado alterado, antes do retorno ao manuseio de organofosforados/carbamatos (DT-4, DT-5)."
  }],
  "patientInstruction" : "Manter afastamento do contato com o defensivo agrícola até a reavaliação. Comparecer ao serviço indicado na data marcada com documento de identificação e a requisição do exame."
}

```
