# 6. Lógica de Suporte à Decisão - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **6. Lógica de Suporte à Decisão**

## 6. Lógica de Suporte à Decisão

Componente 6 do DAK — **Lógica de suporte à decisão**, fundamentada na **NR-7** (Programa de Controle Médico de Saúde Ocupacional), na **NR-31** (Segurança e Saúde no Trabalho na Agricultura) e na **Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS** do Ministério da Saúde (ver `docs/adr/0001-fonte-clinica-nr7-nr31.md` no repositório). Fonte estruturada: `l2/6-decision-logic.csv`. Implementada no L3 como `Library` (`AgroSUSIntoxicacaoLogic`) e `PlanDefinition` (`AgroSUSEstratificacaoRisco`).

**Importante:** ao contrário de outros pathways da Plataforma mareIA (ex.: ATENTO 60+, que deriva uma faixa de risco única do escore IVCF-20), não existe em NR-7/NR-31 um escore composto de risco ocupacional validado para intoxicação por defensivos agrícolas. A lógica abaixo combina um indicador biológico objetivo (colinesterase) com gatilhos de alerta discretos e independentes — nenhum deles ponderado ou somado. Ver `docs/adr/0002-escore-risco-nao-definido.md`.

### DT-1 · Valor basal da colinesterase

Obtido no exame admissional, antes do início do manuseio de organofosforados/carbamatos. Se ausente, afasta-se o trabalhador por 30 dias e realiza-se o exame (idealmente 2 análises com 7–15 dias de intervalo); repete-se a obtenção a cada 2 anos.

**Fonte: NR-7 item 7.4.1; Nota Informativa nº 16/2019, Anexo I itens 1 e 3.**

### DT-2 · Percentual de inibição da colinesterase

```
% de inibição = (atividade basal − atividade obtida) / atividade basal × 100

```

**Fonte: Nota Informativa nº 16/2019, Anexo I item 4.**

### DT-3 · Classificação do resultado

| | | |
| :--- | :--- | :--- |
| Colinesterase plasmática | até 50% | **Normal**— dentro do limite aceitável |
| Colinesterase plasmática | acima de 50% | **Alterado**— excede o Índice Biológico Máximo Permitido (IBMP) |
| Colinesterase de sangue total / eritrocitária | até 25% | **Normal**— dentro do limite aceitável |
| Colinesterase de sangue total / eritrocitária | acima de 25% | **Alterado**— excede o IBMP |
| Qualquer amostra | redução de 20% a 50%/25% | **Precaução**— reforçar práticas de proteção, sem afastamento automático |

**Fonte: NR-7 Quadro I; Nota Informativa nº 16/2019, Anexo I item 4 e Quadro 1.**

### DT-4 · Periodicidade do monitoramento biológico

Rotina: no mínimo **semestral** (podendo ser reduzida por critério do médico coordenador do PCMSO ou por negociação coletiva). Gatilhos adicionais, independentes da rotina: exame admissional; retorno ao trabalho após afastamento superior a 30 dias; mudança de função; sintomático (a qualquer tempo); após aplicações em surto/bloqueio; retestagem após resultado alterado.

**Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa nº 16/2019, Anexo III item 1.1.**

### DT-5 · Conduta frente a resultado alterado

Afastar o trabalhador do contato com o agrotóxico por 30 dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador; repetir o exame após 30 dias; investigar outras causas de depressão enzimática (ex. hepatopatia, medicamentos) antes de concluir pela exposição ocupacional.

**Fonte: Nota Informativa nº 16/2019, Anexo III item 3.**

### DT-6 · Contraindicação ao manuseio

Trabalhadores com hepatopatia, cardiopatia, pneumopatia, desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou em uso de medicamento colinesterase-inibidor não devem manusear organofosforados/carbamatos.

**Fonte: Nota Informativa nº 16/2019, Anexo III item 2.2.**

### DT-7 · Gatilhos de alerta independentes (não pontuados)

Reativados na Seção 16 da anamnese (`Questionnaire/agrosus-anamnese`), registrados pelo ACS em campo:

* Sintoma agudo compatível com intoxicação (Seção 13).
* Manuseio de defensivo de categoria toxicológica 1 ou 2 sem EPI adequado (Seções 6 e 9).
* Histórico de intoxicação aguda prévia (Seção 14).
* Colinesterase alterada ou em precaução (DT-3), quando disponível.

**Conduta comum a qualquer gatilho:** priorizar avaliação clínica na UBS e considerar antecipação do plano de acompanhamento (`CarePlan/AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o julgamento clínico do profissional assistencial.

### DT-8 · Registro e retenção

Exames, afastamentos e condutas devem ser mantidos em registro por, no mínimo, 20 anos após o desligamento do trabalhador.

**Fonte: NR-7 item 7.4.5.1.**

**Fonte primária completa: NR-7, NR-31 e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS (Ministério da Saúde). Ver `sources/_normas_extract.txt` no repositório para o extrato normalizado e os links oficiais.**

