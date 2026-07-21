# Exemplo de Resultado de Colinesterase — Valor Basal - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Resultado de Colinesterase — Valor Basal**

## Example Observation: Exemplo de Resultado de Colinesterase — Valor Basal

Língua: pt-BR

Perfil: [Resultado Laboratorial AgroSUS](StructureDefinition-agrosus-resultado-laboratorial.md)

**identifier**: `https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial`/RES-LAB-2024-000001-COLIN-BASAL

**basedOn**: [ServiceRequest Cholinesterase [Enzymatic activity/volume] in Serum or Plasma and Erythrocytes](ServiceRequest-agrosus-solicitacao-colinesterase-basal-exemplo.md)

**status**: Final

**category**: Laboratory

**code**: Colinesterase plasmática

**subject**: [Maria Aparecida de Souza](Patient-agrosus-patient-example.md)

**effective**: 2024-01-15 07:30:00-0300

**issued**: 2024-01-15 14:00:00-0300

**performer**: [Laboratório Municipal de Referência — Exemplo AgroSUS](Organization-agrosus-laboratorio-exemplo.md)

**value**: 8200 U/L (Detalhes: UCUM códigoU/L = 'U/L')

**interpretation**: Normal

**note**: 

> 

Valor basal (pré-ocupacional), obtido antes do início do manuseio de organofosforados/carbamatos. Referência para o cálculo do percentual de inibição dos resultados subsequentes (DT-2).




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "agrosus-resultado-colinesterase-basal-exemplo",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-resultado-laboratorial"]
  },
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/sid/resultado-laboratorial",
    "value" : "RES-LAB-2024-000001-COLIN-BASAL"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/agrosus-solicitacao-colinesterase-basal-exemplo"
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
  "effectiveDateTime" : "2024-01-15T07:30:00-03:00",
  "issued" : "2024-01-15T14:00:00-03:00",
  "performer" : [{
    "reference" : "Organization/agrosus-laboratorio-exemplo",
    "display" : "Laboratório Municipal de Referência — Exemplo AgroSUS"
  }],
  "valueQuantity" : {
    "value" : 8200,
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
    "text" : "Valor basal (pré-ocupacional), obtido antes do início do manuseio de organofosforados/carbamatos. Referência para o cálculo do percentual de inibição dos resultados subsequentes (DT-2)."
  }]
}

```
