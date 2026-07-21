# Exemplo de Suspeita de Intoxicação por Pesticida - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Suspeita de Intoxicação por Pesticida**

## Example Condition: Exemplo de Suspeita de Intoxicação por Pesticida

Língua: pt-BR

Perfil: [Suspeita ou Confirmação de Intoxicação por Pesticida AgroSUS](StructureDefinition-agrosus-intoxicacao-pesticida.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/condicao-clinica`/COND-2026-000001

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Problem List Item

**code**: Suspeita de intoxicação por pesticida em investigação

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**encounter**: [Avaliação clínica na UBS após visita do ACS](Encounter-agrosus-atendimento-ubs-avaliacao-exemplo.md)

**onset**: 2026-07-20 09:30:00-0300

**recordedDate**: 2026-07-20 10:50:00-0300

**recorder**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

**asserter**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)

### Evidences

| | |
| :--- | :--- |
| - | **Detail** |
| * | [Resposta da anamnese ocupacional aplicada pelo ACS](QuestionnaireResponse-agrosus-anamnese-response-example.md) |

**note**: 

> 

História de exposição ocupacional avaliada pelo médico. Condição provisória, pendente de investigação clínica e laboratorial; não gerada automaticamente pelo sistema.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "agrosus-intoxicacao-pesticida-suspeita-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-intoxicacao-pesticida"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/condicao-clinica",
    "value" : "COND-2026-000001"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "provisional",
      "display" : "Provisional"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "T60.9",
      "display" : "Efeito tóxico de pesticida não especificado"
    }],
    "text" : "Suspeita de intoxicação por pesticida em investigação"
  },
  "subject" : {
    "reference" : "Patient/agrosus-patient-example",
    "display" : "Maria Aparecida de Souza"
  },
  "encounter" : {
    "reference" : "Encounter/agrosus-atendimento-ubs-avaliacao-exemplo",
    "display" : "Avaliação clínica na UBS após visita do ACS"
  },
  "onsetDateTime" : "2026-07-20T09:30:00-03:00",
  "recordedDate" : "2026-07-20T10:50:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "asserter" : {
    "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
    "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
  },
  "evidence" : [{
    "detail" : [{
      "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example",
      "display" : "Resposta da anamnese ocupacional aplicada pelo ACS"
    }]
  }],
  "note" : [{
    "text" : "História de exposição ocupacional avaliada pelo médico. Condição provisória, pendente de investigação clínica e laboratorial; não gerada automaticamente pelo sistema."
  }]
}

```
