# ADR-0005 — `AgroSUSPlanoAcompanhamento.addresses` só aceita `AgroSUSIntoxicacaoPesticida`

## Contexto

Ao criar exemplos de resultado de colinesterase para os três estados de DT-3 (Normal, Precaução,
Alterado — ver `input/fsh/examples/AgroSUSColinesteraseExamples.fsh`), foi identificado que o
perfil `AgroSUSPlanoAcompanhamento` (`input/fsh/profiles/AgroSUSPlanoAcompanhamento.fsh`) define:

```
* addresses 1..1 MS
* addresses only Reference(AgroSUSIntoxicacaoPesticida)
```

Ou seja, todo `CarePlan` de acompanhamento é **obrigado** a referenciar uma condição
`AgroSUSIntoxicacaoPesticida` (suspeita/confirmação de intoxicação).

Isso entra em tensão com `AgroSUSCategoriaPlanoCuidadoCS#monitoramento-exposicao`
(`input/fsh/codesystems/AgroSUSCategoriaPlanoCuidado.fsh`), cuja própria definição diz:
"Acompanhamento longitudinal de trabalhador exposto a defensivos agrícolas, **sem suspeita clínica
atual de intoxicação**". Na prática, essa categoria não pode ser usada em nenhuma instância válida
do perfil hoje: qualquer `AgroSUSPlanoAcompanhamento`, mesmo categorizado como
`monitoramento-exposicao`, precisa referenciar uma condição de intoxicação em `addresses`, o que
contradiz a própria descrição da categoria.

Consequência concreta: não foi possível criar um exemplo de plano de acompanhamento para a conduta
de DT-5 (resultado de colinesterase alterado, sem sintomas, sem suspeita de intoxicação registrada)
sem forçar uma condição `AgroSUSIntoxicacaoPesticida` que não reflete necessariamente o cenário
(um resultado biológico alterado, isoladamente, não é uma suspeita clínica de intoxicação — são
gatilhos distintos em DT-7).

## Decisão

Não decidido nesta sessão — **item em aberto**, registrado para a equipe avaliar uma das opções:

1. Ampliar `addresses` para aceitar também `Reference(AgroSUSResultadoLaboratorial)` (ou tornar o
   `1..1` em `0..1`/`1..*` com múltiplos tipos), permitindo um plano motivado diretamente por um
   resultado biológico alterado, sem exigir uma condição de intoxicação.
2. Manter `addresses` restrito a `AgroSUSIntoxicacaoPesticida`, e em vez disso **retirar ou revisar**
   a categoria `monitoramento-exposicao` do `AgroSUSCategoriaPlanoCuidadoCS`, já que ela descreve um
   cenário que o perfil atual não permite representar.
3. Manter como está e documentar que, na prática, todo acompanhamento — mesmo o de rotina — deve
   ser formalizado com uma condição de investigação (ainda que `provisional`/`unconfirmed`),
   unificando o modelo em torno de `AgroSUSIntoxicacaoPesticida` como o "gatilho" padrão de
   qualquer plano.

Nenhuma dessas opções foi aplicada sem confirmação — não cabe a mim escolher, por ser uma decisão de
modelagem clínica/estrutural, não uma correção de bug.

## Consequências

- Enquanto este item permanecer em aberto, os exemplos de colinesterase alterada
  (`AgroSUSColinesteraseExamples.fsh`) não incluem um `CarePlan` de exemplo — apenas as
  `Observation` e a `ServiceRequest` de retestagem. O exemplo de `CarePlan` existente
  (`agrosus-plano-acompanhamento-exemplo`) continua sendo o único, e é do cenário de suspeita de
  intoxicação por sintomas, não do cenário de biomonitoramento isolado.

## Status

`proposto` — pendente de decisão da equipe sobre `addresses` do `AgroSUSPlanoAcompanhamento` e/ou a
categoria `monitoramento-exposicao`.
