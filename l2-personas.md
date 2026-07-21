# 2. Personas Genéricas - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **2. Personas Genéricas**

## 2. Personas Genéricas

Componente 2 do DAK — **Personas genéricas**. Fonte estruturada: `l2/2-personas.csv`. Cada persona corresponde a um ou mais perfis FHIR em `input/fsh/profiles/` (ver [Artifact Index](artifacts.md)).

| | | |
| :--- | :--- | :--- |
| Trabalhador rural | Pequeno produtor rural acompanhado pelo AgroSUS; sujeito da anamnese, dos exames e do plano de acompanhamento. | `AgroSUSPatient` |
| Agente Comunitário de Saúde (ACS) | Aplica e atualiza a anamnese em visita domiciliar; primeiro ponto de contato e de identificação de gatilhos de alerta em campo. | `AgroSUSACS`,`AgroSUSACSRole`,`AgroSUSVisitaACS` |
| Profissional assistencial da UBS | Médico, enfermeiro ou técnico de enfermagem responsável pela avaliação clínica, solicitação de exames, registro da condição clínica e definição do plano de acompanhamento. | `AgroSUSProfissionalUBS`,`AgroSUSProfissionalUBSRole`,`AgroSUSAtendimentoUBS` |
| Laboratório | Organização responsável pela realização e emissão de resultados de exames laboratoriais, incluindo a colinesterase. | `AgroSUSLaboratorio`,`AgroSUSResultadoLaboratorial`,`AgroSUSLaudoLaboratorial` |
| Unidade Básica de Saúde (UBS) | Organização responsável pelo acompanhamento longitudinal do trabalhador rural e serviço a que ACS e profissionais assistenciais estão vinculados. | `AgroSUSUBS` |
| Auditor / gestor de segurança | Consulta trilhas de auditoria e proveniência dos registros, sem participar do cuidado direto. | `AgroSUSAuditEvent`,`AgroSUSProvenance` |

Estas personas interagem nos [cenários de uso](l2-user-scenarios.md) e nos [processos de negócio](l2-business-process.md) descritos a seguir.

