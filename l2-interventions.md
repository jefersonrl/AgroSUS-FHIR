# 1. Intervenções e Recomendações - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **1. Intervenções e Recomendações**

## 1. Intervenções e Recomendações

Componente 1 do DAK — **Intervenções e recomendações de saúde**. Descreve o que o AgroSUS recomenda fazer, com base em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS (ver `docs/adr/0001-fonte-clinica-nr7-nr31.md`).

### Visão geral

O AgroSUS apoia a Atenção Primária à Saúde na identificação precoce de intoxicação por defensivos agrícolas em trabalhadores rurais, por meio de quatro frentes de intervenção:

1. **Triagem ocupacional/ambiental estruturada**— anamnese aplicada pelo Agente Comunitário de Saúde (ACS) em visita domiciliar (`Questionnaire/agrosus-anamnese`), cobrindo propriedade rural, assistência técnica, capacitação, defensivos utilizados, rastreabilidade das aplicações, exposição, EPI, armazenamento, destinação de embalagens, exposição familiar, condições de saúde e histórico de intoxicação.
1. **Vigilância biológica objetiva**— monitoramento da colinesterase sanguínea (plasmática e/ou de sangue total) com periodicidade mínima semestral, valor basal admissional e classificação por percentual de inibição (ver[Lógica de Decisão](l2-decision-logic.md)).
1. **Resposta clínica**— avaliação na UBS (`AgroSUSAtendimentoUBS`), registro da condição clínica quando houver suspeita ou confirmação de intoxicação (`AgroSUSIntoxicacaoPesticida`), solicitação e resultado de exames laboratoriais, e definição de um plano de acompanhamento longitudinal (`AgroSUSPlanoAcompanhamento`).
1. **Boas práticas e prevenção**— orientação e verificação de uso adequado de EPI, armazenamento seguro de defensivos e destinação correta de embalagens vazias, conforme a NR-31 item 31.8.

### Gatilhos de atenção prioritária

Qualquer um destes gatilhos (ver [componente 6](l2-decision-logic.md)) prioriza a avaliação clínica na UBS, independentemente de escore: sintoma agudo compatível com intoxicação; manuseio de defensivo de categoria toxicológica 1 ou 2 sem EPI adequado; histórico de intoxicação aguda prévia; colinesterase alterada ou em faixa de precaução.

### Limite conhecido

Não há, nas fontes adotadas, uma intervenção de escore de risco composto (diferente do IVCF-20 do pathway ATENTO 60+) — ver `docs/adr/0002-escore-risco-nao-definido.md`.

