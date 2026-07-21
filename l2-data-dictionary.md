# 5. Elementos de Dados (Dicionário) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **5. Elementos de Dados (Dicionário)**

## 5. Elementos de Dados (Dicionário)

Componente 5 do DAK — **Elementos de dados centrais**. O AgroSUS já possui uma camada de terminologia extensa: 17 `CodeSystem` e 9 `ValueSet` locais, além de vocabulários padrão (LOINC para exames/observações, CID-10 para diagnósticos, CBO para ocupações). Ver o [Artifact Index](artifacts.md) para a lista completa.

> **Codificação.** Vocabulários padrão são usados sempre que existem (LOINC, CID-10, CBO via BR Core); `CodeSystem` local só é criado quando não há código padrão equivalente — ver `CLAUDE.md`.

### Colinesterase e exames laboratoriais (LOINC)

| | | | |
| :--- | :--- | :--- | :--- |
| Colinesterase plasmática | LOINC | 2099-0 | `AgroSUSResultadoLaboratorial` |
| Colinesterase eritrocitária | LOINC | 2098-2 | `AgroSUSResultadoLaboratorial` |
| Colinesterases eritrocitária e plasmática (painel) | LOINC | 35558-6 | `AgroSUSSolicitacaoExame`/`AgroSUSLaudoLaboratorial` |

### Terminologia local (CodeSystem) por área

| | |
| :--- | :--- |
| Propriedade rural | `AgroSUSPropriedadeCS`(situação de posse, atividade agrícola, tipo de produção, fonte de água) |
| Assistência técnica | `AgroSUSAssistenciaTecnicaCS` |
| Capacitação | `AgroSUSCapacitacaoCS` |
| Classificação toxicológica | `AgroSUSClassificacaoToxicologicaCS`(categorias 1–5, Anvisa RDC 294/2019) |
| Rastreabilidade das aplicações | `AgroSUSRastreabilidadeCS` |
| Exposição ocupacional | `AgroSUSExposicaoCS`(dias/horas de aplicação, vias, equipamentos, responsável) |
| EPI | `AgroSUSEPICS`(frequência de uso, armazenamento, motivos de não uso) |
| Armazenamento de defensivos | `AgroSUSArmazenamentoDefensivosCS` |
| Destinação de embalagens | `AgroSUSDestinacaoEmbalagensCS` |
| Exposição familiar | `AgroSUSExposicaoFamiliarCS` |
| Condições e sintomas | `AgroSUSCondicoesSintomasCS` |
| Histórico de intoxicação | `AgroSUSHistoricoIntoxicacaoCS` |
| Avaliação de boas práticas | `AgroSUSAvaliacaoBoasPraticasCS` |
| Categoria do plano de cuidado | `AgroSUSCategoriaPlanoCuidadoCS` |
| Escolaridade | `AgroSUSEscolaridadeCS` |
| Tipo de coleta | `AgroSUSTipoColetaCS` |
| Prioridade de alerta (decisão-suporte) | `AgroSUSPrioridadeAlertaCS` |

### Seção 16 — Gatilhos de vigilância (dado novo desta versão)

| | | | |
| :--- | :--- | :--- | :--- |
| Sintoma agudo observado | `vigilancia-sintoma-agudo-observado` | boolean | ADR-0001 (NR-7/NR-31) |
| Produto categoria 1/2 sem EPI | `vigilancia-produto-categoria-1-2-sem-epi` | boolean | NR-31 item 31.8 |
| Histórico de intoxicação prévia | `vigilancia-historico-intoxicacao-previa` | boolean | Seção 14 da anamnese |
| Colinesterase alterada/precaução | `vigilancia-colinesterase-alterada-precaucao` | boolean | NR-7 Quadro I; Nota Informativa 16/2019 |
| Encaminhamento recomendado | `vigilancia-encaminhamento-recomendado` | boolean | Julgamento do ACS |

Ver [componente 6](l2-decision-logic.md) para a lógica de decisão completa e `docs/adr/0002-escore-risco-nao-definido.md` sobre os limites desta fonte.

