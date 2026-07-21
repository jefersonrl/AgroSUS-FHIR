<div>
<p> Este Implementation Guide e seus artefatos estão em desenvolvimento (<code>draft</code>). </p>
<p> Conteúdo para fins de demonstração e implementação piloto. </p>
</div>{:.stu-note}

### Projeto mareIA — AgroSUS

Adaptação digital (WHO SMART Guidelines **L2/L3**) para o pathway **AgroSUS** da Plataforma
mareIA — telemonitoramento e apoio à identificação precoce de **intoxicação por defensivos
agrícolas** em trabalhadores rurais, na Atenção Primária à Saúde, com vigilância biológica pela
**colinesterase sanguínea** (NR-7) e boas práticas de segurança no trabalho rural (NR-31).

> Este IG cobre **apenas o pathway AgroSUS**. No SMART Guidelines, cada linha de cuidado da
> Plataforma mareIA é um IG independente — ver ADR-0003 (`docs/adr/`) sobre a disciplina de
> documentação adotada.

#### Fluxo de cuidado (4 macrofases)

`Cadastro → Triagem ocupacional (anamnese) → Resposta clínica e vigilância biológica → Acompanhamento longitudinal`

1. **Cadastro** — identificação do trabalhador rural pelo ACS, cadastro do trabalhador e da
   propriedade rural.
2. **Triagem ocupacional** — aplicação da anamnese ocupacional/ambiental (18 seções) em visita
   domiciliar, sincronizada de forma atômica e offline-first.
3. **Resposta clínica e vigilância biológica** — avaliação na UBS, monitoramento da colinesterase
   (periodicidade semestral mínima, NR-7), registro da condição clínica quando aplicável.
4. **Acompanhamento longitudinal** — plano de acompanhamento com periodicidade de reavaliação,
   proveniência e auditoria de todos os registros.

#### Componentes do DAK (L2)

<div class="table-responsive" style="overflow-x:auto;" markdown="1">

| # | Componente | Página |
| --- | --- | --- |
| 1 | Intervenções e recomendações | <a href="l2-interventions.html">l2-interventions</a> |
| 2 | Personas genéricas | <a href="l2-personas.html">l2-personas</a> |
| 3 | Cenários de uso | <a href="l2-user-scenarios.html">l2-user-scenarios</a> |
| 4 | Processos de negócio e workflows | <a href="l2-business-process.html">l2-business-process</a> |
| 5 | Elementos de dados (dicionário) | <a href="l2-data-dictionary.html">l2-data-dictionary</a> |
| 6 | Lógica de suporte à decisão | <a href="l2-decision-logic.html">l2-decision-logic</a> |
| 7 | Indicadores de programa | <a href="l2-indicators.html">l2-indicators</a> |
| 8 | Requisitos | <a href="l2-requirements.html">l2-requirements</a> |
| 9 | Cenários de teste | <a href="l2-test-scenarios.html">l2-test-scenarios</a> |

</div>

#### Itens pendentes de confirmação clínica

- **Escore de risco ocupacional** — não há, em NR-7/NR-31, um instrumento composto de risco
  validado (`docs/adr/0002-escore-risco-nao-definido.md`).
- **`AgroSUSPlanoAcompanhamento.addresses` só aceita condição de intoxicação** — a categoria
  "monitoramento de exposição, sem suspeita de intoxicação" não pode hoje ser usada em nenhuma
  instância válida do perfil (`docs/adr/0005-plano-acompanhamento-addresses-so-intoxicacao.md`).

#### Fora de escopo desta fase

- **Classificação de risco por API externa de IA** — descrita no caso de uso do projeto; decisão
  da equipe de manter a lógica rule-based atual e tratar a integração com IA como capacidade
  futura (`docs/adr/0004-caso-de-uso-fatec-personas-cenarios.md`).

*Fonte (L1): NR-7 (PCMSO), NR-31 (Segurança e Saúde no Trabalho Rural) e Nota Informativa nº
16/2019-CGLAB/DAEVS/SVS/MS — Ministério da Saúde. Ver `sources/_normas_extract.txt`.*

- Para a lista completa de artefatos definidos neste IG, ver o <a href="artifacts.html">Artifact
  Index</a>.
- Uma cópia offline completa deste IG está disponível na página de <a href="downloads.html">Downloads</a>.

### Dependencies

{% include dependency-table-short.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP Statements

{% include ip-statements.xhtml %}
