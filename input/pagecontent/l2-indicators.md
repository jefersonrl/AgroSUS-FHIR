Componente 7 do DAK — *Indicadores de programa*, extraídos de `l2/7-indicators.csv` e
fundamentados nas exigências de vigilância da saúde do trabalhador rural (NR-7 e NR-31 — ver
<a href="l2-decision-logic.html">componente 6</a>). Representação computável em
<a href="artifacts.html">Artefatos (L3)</a> (recursos `Measure`).

### Indicadores

<div class="table-responsive" style="overflow-x:auto;" markdown="1">

| Id | Nome | Tipo | Numerador | Denominador | Fonte |
| --- | --- | --- | --- | --- | --- |
| ind-cobertura-basal-colinesterase | Cobertura do exame basal de colinesterase | processo | Trabalhadores com valor basal registrado na admissão | Trabalhadores que manuseiam organofosforados/carbamatos | NR-7 7.4.1 |
| ind-adesao-periodicidade-semestral | Adesão à periodicidade semestral do monitoramento biológico | processo | Trabalhadores com exame nos últimos 6 meses | Trabalhadores elegíveis ao monitoramento biológico | NR-7 7.4.2.1 |
| ind-alterados-com-conduta | Proporção de resultados alterados com conduta registrada | resultado | Resultados alterados com afastamento/conduta registrada | Resultados alterados de colinesterase | Nota Informativa 16/2019, Anexo III item 3 |
| ind-tempo-conduta-pos-alterado | Tempo médio entre resultado alterado e início da conduta | resultado | Soma dos tempos entre resultado e conduta registrada | Resultados alterados respondidos | Nota Informativa 16/2019, Anexo III item 3 |
| ind-cobertura-epi-adequado | Cobertura de uso adequado de EPI | processo | Trabalhadores com EPI adequado registrado | Trabalhadores que manuseiam defensivos categoria 1 ou 2 | NR-31 item 31.8 |
| ind-alertas-sintoma-respondidos | Taxa de alertas de sintoma agudo com encaminhamento assistencial | resultado | Alertas com Encounter/atendimento em até 7 dias | Alertas de sintoma agudo gerados | ADR-0001; NR-31 |
| ind-cobertura-anamnese | Cobertura da anamnese ocupacional | processo | Trabalhadores com anamnese AgroSUS registrada | Trabalhadores cadastrados no AgroSUS | Escopo do próprio AgroSUS-FHIR |

</div>

Estes indicadores são representados como recursos FHIR `Measure` (`AgroSUSMeasureCoberturaBasal`,
`AgroSUSMeasureAdesaoPeriodicidade`, `AgroSUSMeasureAlteradosComConduta`,
`AgroSUSMeasureCoberturaEPI`, `AgroSUSMeasureCoberturaAnamnese`) em `input/fsh/measures/`. As
expressões de população estão em `text/fhirpath` de forma descritiva nesta fase — a implementação
executável em CQL é prevista para uma fase posterior (L4), como no padrão adotado pelos demais
pathways da Plataforma mareIA.
