# Exemplo de Proveniência do Plano de Acompanhamento - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Proveniência do Plano de Acompanhamento**

## Example Provenance: Exemplo de Proveniência do Plano de Acompanhamento

Língua: pt-BR

Perfil: [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md)

Proveniência para [Plano de acompanhamento clínico e ocupacional AgroSUS](CarePlan-agrosus-plano-acompanhamento-exemplo.md)

Resumo

| | |
| :--- | :--- |
| Ocorrência | 2026-07-26 10:35:00-0300 |
| Gravado | 2026-07-26 10:36:00-0300 |
| Atividade | create |

**Agentes**

* **Tipo**: Author
  * **que**: [Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família](PractitionerRole-agrosus-profissional-medico-role-exemplo.md)
  * **Em nome de**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "agrosus-provenance-plano-acompanhamento-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance"]
  },
  "language" : "pt-BR",
  "target" : [{
    "reference" : "CarePlan/agrosus-plano-acompanhamento-exemplo",
    "display" : "Plano de acompanhamento clínico e ocupacional AgroSUS"
  }],
  "occurredDateTime" : "2026-07-26T10:35:00-03:00",
  "recorded" : "2026-07-26T10:36:00-03:00",
  "reason" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    }],
    "text" : "Planejamento do acompanhamento assistencial"
  }],
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "PractitionerRole/agrosus-profissional-medico-role-exemplo",
      "display" : "Eduardo Henrique Almeida — Médico da Estratégia de Saúde da Família"
    },
    "onBehalfOf" : {
      "reference" : "Organization/agrosus-ubs-exemplo",
      "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "Condition/agrosus-intoxicacao-pesticida-suspeita-exemplo",
      "display" : "Suspeita de intoxicação por pesticida em investigação"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "DiagnosticReport/agrosus-laudo-hemograma-exemplo",
      "display" : "Laudo de hemograma completo"
    }
  }]
}

```
