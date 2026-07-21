# CLAUDE.md — Convenções do repositório AgroSUS-FHIR

Este repositório é o pathway **AgroSUS** da Plataforma mareIA — telemonitoramento e apoio à
identificação precoce de intoxicação por defensivos agrícolas em trabalhadores rurais, na Atenção
Primária à Saúde. Segue a disciplina de documentação e camadas L1/L2/L3 descrita em ADR-0003,
preservando o trabalho de modelagem já existente neste repositório. Leia este arquivo e
`docs/adr/` antes de editar qualquer coisa.

## 1. Camadas (L1 → L3)

- **L1 — Narrativa/fonte-verdade clínica:** NR-7 (PCMSO), NR-31 (segurança e saúde no trabalho
  rural) e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Textos/excertos em `sources/`.
  **Nunca** inventar conteúdo clínico que não esteja em L1; lacunas viram ADR (`status: proposto`).
- **L2 — DAK estruturado:** `l2/*.csv` (tabelas de decisão e indicadores) + narrativa em
  `input/pagecontent/*.md`.
- **L3 — IG FHIR:** artefatos FSH em `input/fsh/`, compilados por SUSHI para `fsh-generated/`.

## 2. Estrutura já existente (preservar)

19 perfis sobre BR Core (`input/fsh/profiles/`), 17 CodeSystems + 9 ValueSets locais
(`input/fsh/codesystems/`, `valuesets/`), o questionário de anamnese
(`input/fsh/questionnaires/AgroSUSAnamnese.fsh`), o `CapabilityStatement`
(`input/fsh/capabilities/`) e 13 exemplos (`input/fsh/examples/`). Ver
`AgroSUS-FHIR-Analise-Tecnica.md` para o inventário completo. Não duplicar terminologia: LOINC e
CID-10 já cobrem colinesterase e exames laboratoriais (`AgroSUSResultadosLaboratoriaisVS`); só
criar CodeSystem local quando não houver código padrão.

## 3. Disciplina de documentação

- `docs/prd/` — o que o IG entrega e por quê; critérios de aceite.
- `docs/adr/` — uma decisão por arquivo, imutável após aceito; mudança = novo ADR que supersede.
  Formato: Contexto / Decisão / Consequências / Status.
- `docs/cookbooks/` — receitas passo a passo reproduzíveis (ex. build do IG).
- `docs/hard-earned-lessons.md` — armadilhas e como evitá-las; **atualize a cada build quebrado**
  (o bug do YAML sem aspas no `title` do `sushi-config.yaml`, corrigido em 21/07/2026, é o
  primeiro registro).

**Regra de ouro:** decisão clínica não-trivial → ADR. Bug não-óbvio resolvido → Hard-Earned Lesson.

## 4. Convenções FHIR/FSH

- `fhirVersion: 4.0.1`. Ids em `kebab-case` com prefixo `agrosus-`.
- Idioma: `title`/`description`/`display`/textos em **PT-BR**; nomes técnicos (`Id:`, `Instance:`,
  `Profile:`) em ASCII/PascalCase, convenção já usada no repositório.
- Vocabulários: **LOINC** para exames/observações, **CID-10** para diagnósticos, **CBO** para
  ocupações — todos via `BRCore`/`hl7.terminology`. CodeSystem local só quando não há padrão.
- Todo artefato novo de decisão-suporte começa com `// Fonte L1: <norma, item>` e `// L2: <arquivo>`.

## 5. Build

```bash
sushi .                 # FSH → fsh-generated/resources/*.json (deve dar 0 erros)
./_updatePublisher.sh   # baixa o IG Publisher (1ª vez; requer Java 11+)
./_genonce.sh           # gera o site em output/
```

## 6. Não decidir sozinho

Ambiguidades clínicas (limiares, periodicidade, escore de risco) **não** são resolvidas por
suposição: registre como item aberto em ADR (`status: proposto`) e pergunte. Item aberto atual:
`docs/adr/0002-escore-risco-nao-definido.md` (não há, em NR-7/NR-31, um escore composto de risco
ocupacional validado).
