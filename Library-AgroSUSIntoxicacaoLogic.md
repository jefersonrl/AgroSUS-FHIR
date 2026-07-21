# Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS) - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)**

## Library: Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/Library/AgroSUSIntoxicacaoLogic | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSIntoxicacaoLogic |

 
Regras de decisão do pathway AgroSUS (humano-legíveis; implementação em CQL prevista para fase L4). Fundamentadas em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Não há, nessas fontes, um escore composto de risco — ver ADR-0002. A lógica combina um indicador biológico objetivo (colinesterase) com gatilhos de alerta discretos e independentes. 
1) VALOR BASAL DA COLINESTERASE: obtido no exame admissional, antes do início do manuseio de organofosforados/carbamatos. Se ausente, afastar o trabalhador por 30 dias e realizar o exame (idealmente 2 análises com 7–15 dias de intervalo). Repetir a obtenção a cada 2 anos. Fonte: NR-7 item 7.4.1; Nota Informativa 16/2019, Anexo I item 1 e 3. 
2) PERCENTUAL DE INIBIÇÃO: % inibição = (atividade basal − atividade obtida) / atividade basal × 100. Fonte: Nota Informativa 16/2019, Anexo I item 4. 
3) CLASSIFICAÇÃO DO RESULTADO: 
* Colinesterase PLASMÁTICA: até 50% de inibição = Normal; acima de 50% = Alterado (excede o Índice Biológico Máximo Permitido — IBMP).
* Colinesterase de SANGUE TOTAL/ERITROCITÁRIA: até 25% de inibição = Normal; acima de 25% = Alterado (excede o IBMP).
* PRECAUÇÃO: redução de 20% ou no mínimo 30% (mesmo sem atingir o IBMP) → alerta de atenção, reforçar práticas de proteção (EPI/técnica de aplicação), sem afastamento automático. Fonte: NR-7 Quadro I; Nota Informativa 16/2019, Anexo I item 4 e Quadro 1.
 
4) PERIODICIDADE DO MONITORAMENTO BIOLÓGICO: no mínimo SEMESTRAL em rotina (podendo ser reduzida por critério do médico coordenador do PCMSO ou negociação coletiva). Gatilhos adicionais, independentes da rotina: exame admissional; retorno ao trabalho após afastamento > 30 dias; mudança de função; sintomático (a qualquer tempo, mediante solicitação médica); após aplicações em surto/bloqueio; retestagem após resultado alterado. Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa 16/2019, Anexo III item 1.1. 
5) CONDUTA FRENTE A RESULTADO ALTERADO: afastar o trabalhador do contato com o agrotóxico por 30 dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador; repetir o exame após 30 dias; investigar outras causas de depressão enzimática antes de concluir pela exposição ocupacional. Fonte: Nota Informativa 16/2019, Anexo III item 3. 
6) CONTRAINDICAÇÃO AO MANUSEIO: trabalhadores com hepatopatia, cardiopatia, pneumopatia, desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou uso de medicamento colinesterase-inibidor não devem manusear organofosforados/carbamatos. Fonte: Nota Informativa 16/2019, Anexo III item 2.2. 
7) GATILHOS DE ALERTA INDEPENDENTES (não pontuados, não compõem escore): 
* Sintoma agudo compatível com intoxicação (Seção 13 da anamnese) → ALERTA crítico.
* Manuseio de defensivo de categoria toxicológica 1 ou 2 (AgroSUSClassificacaoToxicologicaVS) sem EPI adequado registrado (Seção 9) → ALERTA crítico.
* Histórico de intoxicação aguda prévia (Seção 14) → ALERTA de acompanhamento prioritário.
* Colinesterase alterada (regra 3) → ALERTA crítico; colinesterase em precaução → ALERTA de atenção. Conduta comum a qualquer ALERTA: priorizar avaliação clínica na UBS e considerar antecipação do plano de acompanhamento (`AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o julgamento clínico do profissional assistencial.
 
8) REGISTRO: eventos de exame, afastamento e conduta devem ser mantidos no prontuário/registro individual por, no mínimo, 20 anos após o desligamento do trabalhador. Fonte: NR-7 item 7.4.5.1. 
ITEM EM ABERTO: não existe, nas fontes L1 adotadas, uma fórmula de escore composto de risco ocupacional. Ver ADR-0002 — não inferir pesos ou combinação entre os gatilhos acima sem validação clínica. 

* **Type: **: **Id: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: AgroSUSIntoxicacaoLogic
* **Type: **: **Version: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: 0.1.0
* **Type: **: **Url: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: [Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)](Library-AgroSUSIntoxicacaoLogic.md)
* **Type: **: **Experimental: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: true
* **Type: **: **Date: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: 2026-07-21 14:24:33+0000
* **Type: **: **Publisher: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: Fatec Ferraz de Vasconcelos
* **Type: **: **Description: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: Regras de decisão do pathway AgroSUS (humano-legíveis; implementação em CQL prevista para fase L4). Fundamentadas em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Não há, nessas fontes, um escore composto de risco — ver ADR-0002. A lógica combina um indicador biológico objetivo (colinesterase) com gatilhos de alerta discretos e independentes.1. VALOR BASAL DA COLINESTERASE: obtido no exame admissional, antes do início do manuseio de organofosforados/carbamatos. Se ausente, afastar o trabalhador por 30 dias e realizar o exame (idealmente 2 análises com 7–15 dias de intervalo). Repetir a obtenção a cada 2 anos. Fonte: NR-7 item 7.4.1; Nota Informativa 16/2019, Anexo I item 1 e 3.
1. PERCENTUAL DE INIBIÇÃO: % inibição = (atividade basal − atividade obtida) / atividade basal × 100. Fonte: Nota Informativa 16/2019, Anexo I item 4.
1. CLASSIFICAÇÃO DO RESULTADO:
* Colinesterase PLASMÁTICA: até 50% de inibição = Normal; acima de 50% = Alterado (excede o Índice Biológico Máximo Permitido — IBMP).
* Colinesterase de SANGUE TOTAL/ERITROCITÁRIA: até 25% de inibição = Normal; acima de 25% = Alterado (excede o IBMP).
* PRECAUÇÃO: redução de 20% ou no mínimo 30% (mesmo sem atingir o IBMP) → alerta de atenção, reforçar práticas de proteção (EPI/técnica de aplicação), sem afastamento automático. Fonte: NR-7 Quadro I; Nota Informativa 16/2019, Anexo I item 4 e Quadro 1.

1. PERIODICIDADE DO MONITORAMENTO BIOLÓGICO: no mínimo SEMESTRAL em rotina (podendo ser reduzida por critério do médico coordenador do PCMSO ou negociação coletiva). Gatilhos adicionais, independentes da rotina: exame admissional; retorno ao trabalho após afastamento > 30 dias; mudança de função; sintomático (a qualquer tempo, mediante solicitação médica); após aplicações em surto/bloqueio; retestagem após resultado alterado. Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa 16/2019, Anexo III item 1.1.
1. CONDUTA FRENTE A RESULTADO ALTERADO: afastar o trabalhador do contato com o agrotóxico por 30 dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador; repetir o exame após 30 dias; investigar outras causas de depressão enzimática antes de concluir pela exposição ocupacional. Fonte: Nota Informativa 16/2019, Anexo III item 3.
1. CONTRAINDICAÇÃO AO MANUSEIO: trabalhadores com hepatopatia, cardiopatia, pneumopatia, desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou uso de medicamento colinesterase-inibidor não devem manusear organofosforados/carbamatos. Fonte: Nota Informativa 16/2019, Anexo III item 2.2.
1. GATILHOS DE ALERTA INDEPENDENTES (não pontuados, não compõem escore):
* Sintoma agudo compatível com intoxicação (Seção 13 da anamnese) → ALERTA crítico.
* Manuseio de defensivo de categoria toxicológica 1 ou 2 (AgroSUSClassificacaoToxicologicaVS) sem EPI adequado registrado (Seção 9) → ALERTA crítico.
* Histórico de intoxicação aguda prévia (Seção 14) → ALERTA de acompanhamento prioritário.
* Colinesterase alterada (regra 3) → ALERTA crítico; colinesterase em precaução → ALERTA de atenção. Conduta comum a qualquer ALERTA: priorizar avaliação clínica na UBS e considerar antecipação do plano de acompanhamento (`AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o julgamento clínico do profissional assistencial.

1. REGISTRO: eventos de exame, afastamento e conduta devem ser mantidos no prontuário/registro individual por, no mínimo, 20 anos após o desligamento do trabalhador. Fonte: NR-7 item 7.4.5.1.
ITEM EM ABERTO: não existe, nas fontes L1 adotadas, uma fórmula de escore composto de risco ocupacional. Ver ADR-0002 — não inferir pesos ou combinação entre os gatilhos acima sem validação clínica.
* **Type: **: **Jurisdiction: **
  * **system: ** [http://terminology.hl7.org/CodeSystem/library-type](http://terminology.hl7.org/7.1.0/CodeSystem-library-type.html)  **code: ** logic-library: BR



## Resource Content

```json
{
  "resourceType" : "Library",
  "id" : "AgroSUSIntoxicacaoLogic",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Library/AgroSUSIntoxicacaoLogic",
  "version" : "0.1.0",
  "name" : "AgroSUSIntoxicacaoLogic",
  "title" : "Lógica de decisão da vigilância de intoxicação por defensivos agrícolas (AgroSUS)",
  "status" : "active",
  "experimental" : true,
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/library-type",
      "code" : "logic-library"
    }]
  },
  "date" : "2026-07-21T14:24:33+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Regras de decisão do pathway AgroSUS (humano-legíveis; implementação em CQL prevista para fase L4).\nFundamentadas em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/DAEVS/SVS/MS. Não há, nessas\nfontes, um escore composto de risco — ver ADR-0002. A lógica combina um indicador biológico\nobjetivo (colinesterase) com gatilhos de alerta discretos e independentes.\n\n1) VALOR BASAL DA COLINESTERASE: obtido no exame admissional, antes do início do manuseio de\n   organofosforados/carbamatos. Se ausente, afastar o trabalhador por 30 dias e realizar o exame\n   (idealmente 2 análises com 7–15 dias de intervalo). Repetir a obtenção a cada 2 anos.\n   Fonte: NR-7 item 7.4.1; Nota Informativa 16/2019, Anexo I item 1 e 3.\n\n2) PERCENTUAL DE INIBIÇÃO: % inibição = (atividade basal − atividade obtida) / atividade basal × 100.\n   Fonte: Nota Informativa 16/2019, Anexo I item 4.\n\n3) CLASSIFICAÇÃO DO RESULTADO:\n   - Colinesterase PLASMÁTICA: até 50% de inibição = Normal; acima de 50% = Alterado (excede o\n     Índice Biológico Máximo Permitido — IBMP).\n   - Colinesterase de SANGUE TOTAL/ERITROCITÁRIA: até 25% de inibição = Normal; acima de 25% =\n     Alterado (excede o IBMP).\n   - PRECAUÇÃO: redução de 20% ou no mínimo 30% (mesmo sem atingir o IBMP) → alerta de atenção,\n     reforçar práticas de proteção (EPI/técnica de aplicação), sem afastamento automático.\n   Fonte: NR-7 Quadro I; Nota Informativa 16/2019, Anexo I item 4 e Quadro 1.\n\n4) PERIODICIDADE DO MONITORAMENTO BIOLÓGICO: no mínimo SEMESTRAL em rotina (podendo ser reduzida\n   por critério do médico coordenador do PCMSO ou negociação coletiva). Gatilhos adicionais,\n   independentes da rotina: exame admissional; retorno ao trabalho após afastamento > 30 dias;\n   mudança de função; sintomático (a qualquer tempo, mediante solicitação médica); após aplicações\n   em surto/bloqueio; retestagem após resultado alterado.\n   Fonte: NR-7 itens 7.4.2.1 e 7.4.3.3; Nota Informativa 16/2019, Anexo III item 1.1.\n\n5) CONDUTA FRENTE A RESULTADO ALTERADO: afastar o trabalhador do contato com o agrotóxico por 30\n   dias; encaminhar para avaliação clínica e laboratorial no serviço de saúde do trabalhador;\n   repetir o exame após 30 dias; investigar outras causas de depressão enzimática antes de\n   concluir pela exposição ocupacional.\n   Fonte: Nota Informativa 16/2019, Anexo III item 3.\n\n6) CONTRAINDICAÇÃO AO MANUSEIO: trabalhadores com hepatopatia, cardiopatia, pneumopatia,\n   desnutrição, gestação, lactação, câncer, imunossupressão, neuropatia, ou uso de medicamento\n   colinesterase-inibidor não devem manusear organofosforados/carbamatos.\n   Fonte: Nota Informativa 16/2019, Anexo III item 2.2.\n\n7) GATILHOS DE ALERTA INDEPENDENTES (não pontuados, não compõem escore):\n   - Sintoma agudo compatível com intoxicação (Seção 13 da anamnese) → ALERTA crítico.\n   - Manuseio de defensivo de categoria toxicológica 1 ou 2 (AgroSUSClassificacaoToxicologicaVS)\n     sem EPI adequado registrado (Seção 9) → ALERTA crítico.\n   - Histórico de intoxicação aguda prévia (Seção 14) → ALERTA de acompanhamento prioritário.\n   - Colinesterase alterada (regra 3) → ALERTA crítico; colinesterase em precaução → ALERTA de\n     atenção.\n   Conduta comum a qualquer ALERTA: priorizar avaliação clínica na UBS e considerar antecipação do\n   plano de acompanhamento (`AgroSUSPlanoAcompanhamento`). Suporte à decisão — não substitui o\n   julgamento clínico do profissional assistencial.\n\n8) REGISTRO: eventos de exame, afastamento e conduta devem ser mantidos no prontuário/registro\n   individual por, no mínimo, 20 anos após o desligamento do trabalhador.\n   Fonte: NR-7 item 7.4.5.1.\n\nITEM EM ABERTO: não existe, nas fontes L1 adotadas, uma fórmula de escore composto de risco\nocupacional. Ver ADR-0002 — não inferir pesos ou combinação entre os gatilhos acima sem validação\nclínica.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }]
}

```
