# ADR-0001 — Fonte clínica (L1) da lógica de decisão: NR-7 e NR-31

- **Status:** Aceito (2026-07-21)
- **Decisores:** Jeferson Roberto (PO) + Claude

## Contexto

O AgroSUS-FHIR é um dos pathways da Plataforma mareIA (ver `docs/adr/0003` sobre a relação com o
template `mareIA-ig`/ATENTO 60+). Diferente do ATENTO 60+, que adapta digitalmente o *Protocolo
Clínico Geral mareIA (WP1)*, o AgroSUS ainda não possui um protocolo clínico geral próprio e
validado (por isso a Seção 16 da anamnese — lógica de decisão — foi deliberadamente adiada, ver
commit `1333` de `AgroSUSAnamnese.fsh`).

Na ausência desse protocolo, o Product Owner definiu como fonte-verdade (L1) para a lógica de
decisão as normas regulamentadoras do Ministério do Trabalho e Emprego:

- **NR-7** — Programa de Controle Médico de Saúde Ocupacional (PCMSO), item 7.4 (monitoramento
  biológico da exposição ocupacional a organofosforados e carbamatos, Quadro I).
- **NR-31** — Segurança e Saúde no Trabalho na Agricultura, Pecuária, Silvicultura, Exploração
  Florestal e Aquicultura (exames médicos periódicos, EPI, manuseio e armazenamento de
  agrotóxicos).
- **Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS**, do Ministério da Saúde, que operacionaliza o
  Quadro I da NR-7 com fórmulas, limiares numéricos e condutas para o monitoramento da colinesterase
  sanguínea — usada aqui como interpretação oficial complementar da NR-7, por trazer os únicos
  parâmetros numéricos publicamente disponíveis e citáveis para essa finalidade.

## Decisão

A lógica de decisão (componente L2 #6) do AgroSUS-FHIR será fundamentada exclusivamente no que
está explicitamente escrito nessas três fontes, citadas artefato a artefato. Nenhum limiar,
peso ou fórmula será extrapolado ou inventado além do que essas normas definem.

Consequência direta: a NR-7/NR-31 definem com precisão a **vigilância biológica objetiva**
(colinesterase, periodicidade, condutas de afastamento) mas **não definem um escore composto de
risco** análogo ao IVCF-20 do ATENTO 60+. Ver `docs/adr/0002-escore-risco-nao-definido.md`.

## Consequências

- (+) Toda regra de decisão é rastreável a um item específico de NR-7, NR-31 ou da Nota
  Informativa 16/2019, citado em comentário `// Fonte L1` nos artefatos FSH.
- (+) Evita fabricar critérios clínicos sem validação — alinhado à CLAUDE.md do template
  mareIA-ig ("nunca inventar conteúdo clínico que não esteja em L1").
- (−) A cobertura é mais estreita que um protocolo clínico dedicado: cobre vigilância biológica
  (colinesterase) e requisitos gerais de segurança do trabalho, não uma triagem clínica de
  sintomas de intoxicação aguda (isso permanece na Seção 13 da anamnese, sem pontuação).
- Mitigação futura: se/quando existir um protocolo clínico geral do AgroSUS (equivalente ao WP1),
  este ADR deve ser revisado e a lógica de decisão expandida.
