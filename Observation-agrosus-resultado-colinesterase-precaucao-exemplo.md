# Exemplo de Resultado de Colinesterase — Precaução - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Resultado de Colinesterase — Precaução**

## Example Observation: Exemplo de Resultado de Colinesterase — Precaução

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2027-000001-COLIN

**basedOn**: [ServiceRequest Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](ServiceRequest-agrosus-solicitacao-colinesterase-semestral-2027-01-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2027-01-20 08:00:00-0300

**issued**: 2027-01-20 13:30:00-0300

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 5000 U/L (Detalhes: UCUM códigoU/L = 'U/L')

**interpretation**: Low

**note**: 

> 

Percentual de inibição = (8200 − 5000) / 8200 × 100 = 39,02%. Não excede o IBMP (50% para colinesterase plasmática) — permanece classificado como Normal por DT-3, mas está na faixa de precaução (20%–50%) descrita na Nota Informativa 16/2019, Anexo I. Gera alerta de prioridade 'Atenção' (AgroSUSPrioridadeAlertaCS#atencao): reforçar uso de EPI e técnica de aplicação, sem afastamento automático.


**derivedFrom**: [Observation Cholinesterase [Enzymatic activity/volume] in Serum or Plasma](Observation-agrosus-resultado-colinesterase-basal-exemplo.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-colinesterase-precaucao-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2027-000001-COLIN"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-colinesterase-semestral-2027-01-exemplo"
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
  "effectiveDateTime" : "2027-01-20T08:00:00-03:00",
  "issued" : "2027-01-20T13:30:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "valueQuantity" : {
    "value" : 5000,
    "unit" : "U/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "note" : [{
    "text" : "Percentual de inibição = (8200 − 5000) / 8200 × 100 = 39,02%. Não excede o IBMP (50% para colinesterase plasmática) — permanece classificado como Normal por DT-3, mas está na faixa de precaução (20%–50%) descrita na Nota Informativa 16/2019, Anexo I. Gera alerta de prioridade 'Atenção' (AgroSUSPrioridadeAlertaCS#atencao): reforçar uso de EPI e técnica de aplicação, sem afastamento automático."
  }],
  "derivedFrom" : [{
    "reference" : "Observation/agrosus-resultado-colinesterase-basal-exemplo"
  }]
}

```
