# AgroSUS · Plataforma mareIA — Implementation Guide (FHIR R4)

Implementation Guide (FHIR R4) do pathway **AgroSUS** da Plataforma mareIA — telemonitoramento e
apoio à identificação precoce de intoxicação por defensivos agrícolas em trabalhadores rurais, na
Atenção Primária à Saúde (SUS).

CI Build:
* http://build.fhir.org/ig/jefersonrl/AgroSUS-FHIR
* https://jefersonrl.github.io/AgroSUS-FHIR

> Cada linha de cuidado (pathway) da Plataforma mareIA é publicada como um IG independente. Este
> repositório segue a disciplina do template
> [`mareIA-ig`](https://github.com/italomacedo/mareIA-ig) (pathway ATENTO 60+), adaptada para
> preservar a modelagem já existente do AgroSUS — ver `docs/adr/0003-relacao-template-mareia-ig.md`.

## Camadas SMART Guidelines

| Camada | O que é | Onde está |
| --- | --- | --- |
| **L1** | Fonte-verdade clínica: NR-7 (PCMSO), NR-31 (segurança e saúde no trabalho rural) e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS | `sources/` |
| **L2** | DAK estruturado (tabelas de decisão e indicadores) | `l2/` (fonte) + `input/pagecontent/*.md` (narrativa do IG) |
| **L3** | Artefatos FHIR (FSH): 19 perfis, 17 CodeSystems, 9 ValueSets, questionário de anamnese, CapabilityStatement, Library, PlanDefinition, Measures | `input/fsh/**` → compilado para `fsh-generated/` |

## Estrutura

```
sources/           → L1: normas regulamentadoras (fonte-verdade clínica)
l2/                → L2: DAK estruturado (CSV de lógica de decisão e indicadores)
input/fsh/         → L3: FHIR Shorthand (profiles, valuesets, questionnaires, libraries,
                     plandefinitions, measures, capabilities, examples)
input/pagecontent/ → narrativa do IG publicado
docs/              → disciplina de desenvolvimento: PRD, ADRs, cookbooks, Hard-Earned Lessons
```

## Documentação de decisões

Decisões não triviais (fonte clínica, limiares, relação com o template) viram **ADR**
(`docs/adr/`); armadilhas de build viram **Hard-Earned Lessons** (`docs/hard-earned-lessons.md`).
Ver `CLAUDE.md` para as convenções completas do repositório.

## Build

```bash
# 1. Validar sintaxe do sushi-config.yaml (rápido, sem rede)
python3 -c "import yaml; yaml.safe_load(open('sushi-config.yaml')); print('OK')"

# 2. Compilar FSH → recursos FHIR JSON
sushi .

# 3. Gerar o site do IG (requer Java 11+; baixa o IG Publisher na 1ª vez)
./_genonce.sh      # Linux/macOS
_genonce.bat       # Windows
```

Ver `docs/cookbooks/build-ig.md` para o passo a passo completo.

## Status

`draft` v0.1.0 — em desenvolvimento. Itens pendentes de validação clínica em `docs/adr/`
(destaque: `0002-escore-risco-nao-definido.md` — não há, em NR-7/NR-31, um escore composto de
risco ocupacional validado).

## Licença

CC-BY-SA-3.0-IGO. Ver `LICENSE.md`.
