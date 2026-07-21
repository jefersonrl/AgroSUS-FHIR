# 9. Cenários de Teste - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* **9. Cenários de Teste**

## 9. Cenários de Teste

Componente 9 do DAK — **Cenários de teste**. Casos de teste (TC) derivados da lógica de decisão ([componente 6](l2-decision-logic.md)), para validação manual ou automatizada dos artefatos L3. Não são normativos nem substituem testes de conformidade formais.

| | | | |
| :--- | :--- | :--- | :--- |
| TC-01 | Colinesterase plasmática normal | Basal 8000 U/L; obtida 4500 U/L (inibição 43,75%) | Normal — manter rotina semestral |
| TC-02 | Colinesterase plasmática alterada | Basal 8500 U/L; obtida 3500 U/L (inibição 58,8%) | Alterado — afastar 30 dias; reavaliar |
| TC-03 | Colinesterase sangue total alterada | Inibição de sangue total = 30% | Alterado (limite de 25% para sangue total) — afastar 30 dias |
| TC-04 | Precaução sem atingir o IBMP | Inibição plasmática = 28% | Alerta de precaução — reforçar EPI/técnica, sem afastamento automático |
| TC-05 | Sintoma agudo em campo | ACS marca sintoma agudo compatível na Seção 16 | Alerta crítico — encaminhamento prioritário à UBS |
| TC-06 | Produto categoria 1 sem EPI | Defensivo categoria toxicológica 1 (Seção 6) e uso de EPI "nunca" (Seção 9) | Alerta crítico — verificar EPI e capacitação |
| TC-07 | Histórico de intoxicação prévia | Uma ou mais intoxicações agudas anteriores (Seção 14) | Alerta de acompanhamento prioritário |
| TC-08 | Sincronização offline da visita | `AgroSUSTransacaoVisita`com 4 entradas (paciente, visita, anamnese, proveniência) e`PUT`condicional | Transação aceita de forma atômica; idempotente em reenvio |
| TC-09 | Retorno ao trabalho após afastamento | Trabalhador retorna após afastamento > 30 dias | Exame de colinesterase obrigatório (gatilho fora da rotina) |
| TC-10 | Contraindicação ao manuseio | Trabalhadora gestante que manuseia organofosforados | Alerta de contraindicação — providências administrativas (Nota Informativa 16/2019, Anexo III item 2.2) |

**Fonte: NR-7, NR-31 e Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Ver `sources/_normas_extract.txt` para os valores de referência usados nos cálculos acima.**

Os estados Normal, Precaução e Alterado (TC-01, TC-02 e TC-04) também estão demonstrados como exemplos FHIR completos (`Observation` de colinesterase plasmática, com valor basal, percentual de inibição calculado em `note` e classificação em `interpretation`) em `input/fsh/examples/AgroSUSColinesteraseExamples.fsh` — instâncias `agrosus-resultado-colinesterase-normal-exemplo`, `agrosus-resultado-colinesterase-precaucao-exemplo` e `agrosus-resultado-colinesterase-alterada-exemplo`. Os valores numéricos usados nesses exemplos são ilustrativos e diferem dos desta tabela, mas seguem a mesma regra de classificação (DT-3).

