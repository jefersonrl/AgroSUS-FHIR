Componente 8 do DAK — *Requisitos funcionais e não-funcionais*. No L3: `CapabilityStatement`
(`agrosus-server-capabilities`) e os perfis referenciados no <a href="artifacts.html">Artifact
Index</a>.

### Requisitos Funcionais

<div class="table-responsive" style="overflow-x:auto;" markdown="1">

| Id | Requisito | Fonte |
| --- | --- | --- |
| RF-01 | Cadastro do trabalhador rural e da propriedade rural pelo ACS | Seções 2–3 da anamnese |
| RF-02 | Aplicação da anamnese ocupacional/ambiental estruturada em visita domiciliar | `Questionnaire/agrosus-anamnese` |
| RF-03 | Sincronização atômica e **offline-first** da visita (paciente + visita + anamnese + proveniência) | `AgroSUSTransacaoVisita` |
| RF-04 | Registro da condição clínica de suspeita/confirmação de intoxicação | `AgroSUSIntoxicacaoPesticida` |
| RF-05 | Solicitação e resultado de exames laboratoriais, incluindo colinesterase | `AgroSUSSolicitacaoExame`, `AgroSUSResultadoLaboratorial`, `AgroSUSLaudoLaboratorial` |
| RF-06 | Classificação automática do percentual de inibição da colinesterase e alerta quando excede o IBMP | `Library/AgroSUSIntoxicacaoLogic`, `PlanDefinition/AgroSUSEstratificacaoRisco` |
| RF-07 | Definição e revisão de plano de acompanhamento longitudinal com periodicidade | `AgroSUSPlanoAcompanhamento` |
| RF-08 | Registro de gatilhos de alerta independentes (sintoma agudo, produto sem EPI, histórico de intoxicação) | Seção 16 da anamnese |
| RF-09 | Trilha de auditoria e proveniência de todas as operações | `AgroSUSAuditEvent`, `AgroSUSProvenance` |

</div>

### Requisitos Não-Funcionais

<div class="table-responsive" style="overflow-x:auto;" markdown="1">

| Id | Requisito | Fonte |
| --- | --- | --- |
| RNF-01 | Interoperabilidade **HL7 FHIR R4** sobre o BR Core; vocabulários **LOINC**, **CID-10** e **CBO** | `sushi-config.yaml` (dependências) |
| RNF-02 | Operação **offline** com sincronização automática ao reconectar (visita do ACS) | `AgroSUSTransacaoVisita` |
| RNF-03 | Segurança e privacidade: autenticação, autorização por função, TLS e registro de auditoria | `CapabilityStatement/agrosus-server-capabilities`, `AgroSUSAuditEvent` |
| RNF-04 | Retenção de registros de exames/afastamentos por, no mínimo, 20 anos após o desligamento do trabalhador | NR-7 item 7.4.5.1 |
| RNF-05 | Rastreabilidade de toda regra de decisão a uma fonte L1 citada (`// Fonte L1`) | `CLAUDE.md`; `docs/adr/0001` |
| RNF-06 | Nenhum limiar ou peso clínico inferido sem fonte validada | `docs/adr/0002-escore-risco-nao-definido.md` |

</div>

*Fonte primária: NR-7, NR-31 e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Ver
<a href="l2-decision-logic.html">componente 6</a>.*
