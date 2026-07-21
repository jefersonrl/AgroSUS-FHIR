# Exemplo de Resultado de Colinesterase — Normal - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Resultado de Colinesterase — Normal**

## Example Observation: Exemplo de Resultado de Colinesterase — Normal

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2026-000002-COLIN

**basedOn**: [ServiceRequest Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](ServiceRequest-agrosus-solicitacao-colinesterase-semestral-2026-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2026-07-25 08:15:00-0300

**issued**: 2026-07-25 12:00:00-0300

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 7000 U/L (Detalhes: UCUM códigoU/L = 'U/L')

**interpretation**: Normal

**note**: 

> 

Percentual de inibição = (8200 − 7000) / 8200 × 100 = 14,63%. Até 50% de inibição plasmática = Normal (DT-3); abaixo da faixa de precaução (20%–50%), sem gatilho de alerta.


**derivedFrom**: [Observation Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](Observation-agrosus-resultado-colinesterase-basal-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-colinesterase-normal-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2026-000002-COLIN"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-colinesterase-semestral-2026-exemplo"
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
  "effectiveDateTime" : "2026-07-25T08:15:00-03:00",
  "issued" : "2026-07-25T12:00:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "valueQuantity" : {
    "value" : 7000,
    "unit" : "U/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "text" : "Percentual de inibição = (8200 − 7000) / 8200 × 100 = 14,63%. Até 50% de inibição plasmática = Normal (DT-3); abaixo da faixa de precaução (20%–50%), sem gatilho de alerta."
  }],
  "derivedFrom" : [{
    "reference" : "Observation/agrosus-resultado-colinesterase-basal-exemplo"
  }]
}

```
