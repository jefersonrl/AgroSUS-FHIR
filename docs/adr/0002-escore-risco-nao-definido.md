# ADR-0002 — Não existe escore composto de risco (diferente do IVCF-20)

- **Status:** PROPOSTO — aguarda confirmação da equipe clínica/toxicológica
- **Bloqueia:** eventual reativação de uma Seção 16 "pontuada" na anamnese; qualquer indicador que
  dependa de uma faixa de risco única para o trabalhador.

## Contexto

O IG de referência (mareIA-ig, pathway ATENTO 60+) deriva uma faixa de risco única (Robusto /
Risco de fragilização / Frágil) a partir da soma ponderada de 20 itens do instrumento IVCF-20 —
um instrumento validado e publicado (Moraes et al.).

Não existe, em NR-7 ou NR-31 (ver ADR-0001), um instrumento equivalente para intoxicação por
agrotóxicos: nenhuma das duas normas define pesos, soma ou faixas combinando exposição, uso de
EPI, sintomas e histórico em um único escore. O que as normas efetivamente definem é:

1. Um indicador biológico objetivo e sim/não binário: a colinesterase sanguínea está ou não
   dentro do limite aceitável (ver `l2/6-decision-logic.csv`, tabela `colinesterase-classificacao`).
2. Uma lista de gatilhos de alerta independentes (sintomas agudos, categoria toxicológica do
   produto manuseado, ausência de EPI, histórico de intoxicação prévia) — nenhum deles ponderado
   ou somado entre si nas normas.

## Questão aberta (não decidir sozinho)

Definir se o AgroSUS deve, no futuro, adotar ou construir um instrumento de escore de risco
ocupacional validado (equivalente ao IVCF-20) para consolidar os gatilhos em uma faixa única, e
qual seria a fonte desse instrumento (ex.: um protocolo clínico geral do projeto mareIA/AgroSUS
ainda não publicado, uma escala validada na literatura de saúde do trabalhador rural, ou critério
de consenso da equipe clínica do projeto).

## Decisão provisória (para destravar L2/L3)

Modelar a lógica de decisão como **gatilhos discretos e independentes** (sem soma/ponderação),
mais o **indicador objetivo de colinesterase** (que tem limiar oficial). Isso é o que está
implementado em `Library/AgroSUSIntoxicacaoLogic` e `PlanDefinition/AgroSUSEstratificacaoRisco`.
Não inferir pesos ou compor um escore por conta própria. Reabrir como ADR-0002a se a equipe
clínica definir um instrumento validado.
