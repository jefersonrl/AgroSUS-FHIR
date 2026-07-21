# Exemplo de Resultado de Colinesterase — Alterado - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Resultado de Colinesterase — Alterado**

## Example Observation: Exemplo de Resultado de Colinesterase — Alterado

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2027-000002-COLIN

**basedOn**: [ServiceRequest Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](ServiceRequest-agrosus-solicitacao-colinesterase-semestral-2027-07-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2027-07-22 08:10:00-0300

**issued**: 2027-07-22 13:00:00-0300

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 3400 U/L (Detalhes: UCUM códigoU/L = 'U/L')

**interpretation**: Critical low

**note**: 

> 

Percentual de inibição = (8200 − 3400) / 8200 × 100 = 58,54%. Acima de 50% de inibição plasmática = Alterado, excede o IBMP (DT-3). Alerta de prioridade 'Crítica' (AgroSUSPrioridadeAlertaCS#critica). Conduta (DT-5; Nota Informativa 16/2019, Anexo III item 3): afastar do contato com o defensivo por 30 dias, encaminhar para avaliação clínica e laboratorial, repetir o exame após 30 dias e investigar outras causas de depressão enzimática antes de concluir pela exposição ocupacional.


**derivedFrom**: [Observation Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](Observation-agrosus-resultado-colinesterase-basal-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-colinesterase-alterada-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2027-000002-COLIN"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-colinesterase-semestral-2027-07-exemplo"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
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
  "effectiveDateTime" : "2027-07-22T08:10:00-03:00",
  "issued" : "2027-07-22T13:00:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "valueQuantity" : {
    "value" : 3400,
    "unit" : "U/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "LL",
      "display" : "Critical low"
    }]
  }],
  "note" : [{
    "text" : "Percentual de inibição = (8200 − 3400) / 8200 × 100 = 58,54%. Acima de 50% de inibição plasmática = Alterado, excede o IBMP (DT-3). Alerta de prioridade 'Crítica' (AgroSUSPrioridadeAlertaCS#critica). Conduta (DT-5; Nota Informativa 16/2019, Anexo III item 3): afastar do contato com o defensivo por 30 dias, encaminhar para avaliação clínica e laboratorial, repetir o exame após 30 dias e investigar outras causas de depressão enzimática antes de concluir pela exposição ocupacional."
  }],
  "derivedFrom" : [{
    "reference" : "Observation/agrosus-resultado-colinesterase-basal-exemplo"
  }]
}

```
