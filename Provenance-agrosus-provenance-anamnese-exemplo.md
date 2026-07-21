# Exemplo de Proveniência da Anamnese AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Proveniência da Anamnese AgroSUS**

## Example Provenance: Exemplo de Proveniência da Anamnese AgroSUS

Língua: pt-BR

Perfil: [Proveniência dos Registros AgroSUS](StructureDefinition-agrosus-provenance.md)

Proveniência para [Resposta da anamnese AgroSUS](QuestionnaireResponse-agrosus-anamnese-response-example.md)

Resumo

| | |
| :--- | :--- |
| Ocorrência | 2026-07-20 09:30:00-0300 |
| Gravado | 2026-07-20 09:31:00-0300 |
| Atividade | create |

**Agentes**

* **Tipo**: Author
  * **que**: [Maria Clara Oliveira — ACS da UBS Jardim Esperança](PractitionerRole-agrosus-acs-role-exemplo.md)
  * **Em nome de**: [UBS Jardim Esperança — Exemplo AgroSUS](Organization-agrosus-ubs-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "agrosus-provenance-anamnese-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-provenance"]
  },
  "language" : "pt-BR",
  "target" : [{
    "reference" : "QuestionnaireResponse/agrosus-anamnese-response-example",
    "display" : "Resposta da anamnese AgroSUS"
  }],
  "occurredDateTime" : "2026-07-20T09:30:00-03:00",
  "recorded" : "2026-07-20T09:31:00-03:00",
  "reason" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "TREAT",
      "display" : "treatment"
    }],
    "text" : "Registro assistencial durante visita do ACS"
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
      "reference" : "PractitionerRole/agrosus-acs-role-exemplo",
      "display" : "Maria Clara Oliveira — ACS da UBS Jardim Esperança"
    },
    "onBehalfOf" : {
      "reference" : "Organization/agrosus-ubs-exemplo",
      "display" : "UBS Jardim Esperança — Exemplo AgroSUS"
    }
  }]
}

```
