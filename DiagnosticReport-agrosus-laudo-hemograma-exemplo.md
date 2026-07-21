# Exemplo de Laudo de Hemograma AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Exemplo de Laudo de Hemograma AgroSUS**

## Example DiagnosticReport: Exemplo de Laudo de Hemograma AgroSUS

Língua: pt-BR

Perfil: [Laudo Laboratorial AgroSUS](StructureDefinition-agrosus-laudo-laboratorial.md)

## Hemograma completo (Hematology) 

| | |
| :--- | :--- |
| Assunto | Maria Aparecida de Souza(official) Female, DoB: 1978-05-14 ( Health Card Number: NamingSystemCNS#987654321098765 (use: official, )) |
| Quando Para | 2026-07-25 08:15:00-0300 |
| Comunicado | 2026-07-25 12:10:00-0300 |
| Intérprete | [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md) |
| Identificador | `https://jefersonrl.github.io/AgroSUS-FHIR/sid/laudo-laboratorial`/LAUDO-LAB-2026-000001 |

**Detalhes do relatório**

* **Código**: [Hemoglobina](Observation-agrosus-resultado-hemoglobina-exemplo.md)
  * **Valor**: 13.2 g/dL (Detalhes: UCUM códigog/dL = 'g/dL')
  * **Bandeiras**: Final,Normal
  * **Nota**: > Faixa de referência informada pelo laboratório: 12,0 a 16,0 g/dL.
  * **Comunicado**: 2026-07-25 12:00:00-0300
* **Código**: [Hematócrito](Observation-agrosus-resultado-hematocrito-exemplo.md)
  * **Valor**: 39.5 % (Detalhes: UCUM código% = '%')
  * **Bandeiras**: Final,Normal
  * **Nota**: > Faixa de referência informada pelo laboratório: 36,0% a 46,0%.
  * **Comunicado**: 2026-07-25 12:00:00-0300
* **Código**: [Leucócitos](Observation-agrosus-resultado-leucocitos-exemplo.md)
  * **Valor**: 6.8 10³/µL (Detalhes: UCUM código10*3/uL = '10*3/uL')
  * **Bandeiras**: Final,Normal
  * **Nota**: > Faixa de referência informada pelo laboratório: 4,0 a 10,0 × 10³/µL.
  * **Comunicado**: 2026-07-25 12:00:00-0300
* **Código**: [Plaquetas](Observation-agrosus-resultado-plaquetas-exemplo.md)
  * **Valor**: 250 10³/µL (Detalhes: UCUM código10*3/uL = '10*3/uL')
  * **Bandeiras**: Final,Normal
  * **Nota**: > Faixa de referência informada pelo laboratório: 150 a 450 × 10³/µL.
  * **Comunicado**: 2026-07-25 12:00:00-0300

Resultados apresentados dentro das faixas de referência informadas pelo laboratório neste exemplo fictício.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "agrosus-laudo-hemograma-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-laudo-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/laudo-laboratorial",
    "value" : "LAUDO-LAB-2026-000001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-hemograma-exemplo"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "HM",
      "display" : "Hematology"
    }]
  }],
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
  "effectiveDateTime" : "2026-07-25T08:15:00-03:00",
  "issued" : "2026-07-25T12:10:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "result" : [{
    "reference" : "Observation/agrosus-resultado-hemoglobina-exemplo"
  },
  {
    "reference" : "Observation/agrosus-resultado-hematocrito-exemplo"
  },
  {
    "reference" : "Observation/agrosus-resultado-leucocitos-exemplo"
  },
  {
    "reference" : "Observation/agrosus-resultado-plaquetas-exemplo"
  }],
  "conclusion" : "Resultados apresentados dentro das faixas de referência informadas pelo laboratório neste exemplo fictício."
}

```
