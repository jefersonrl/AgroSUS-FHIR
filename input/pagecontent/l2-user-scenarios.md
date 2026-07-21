Componente 3 do DAK — *Cenários de uso*. Narrativas ilustrativas de como as personas
(<a href="l2-personas.html">componente 2</a>) interagem nos processos de negócio
(<a href="l2-business-process.html">componente 4</a>).

### Cenário 1 — Visita domiciliar e aplicação da anamnese (offline-first)

O ACS visita o trabalhador rural em sua propriedade. Sem conexão de rede, aplica a anamnese
ocupacional/ambiental pelo aplicativo (`Questionnaire/agrosus-anamnese`). Ao final da visita, o
aplicativo monta um `Bundle` transacional e idempotente (`AgroSUSTransacaoVisita`) com o paciente,
a visita, a resposta da anamnese e a proveniência, sincronizando de forma atômica assim que a
conexão for restabelecida.

### Cenário 2 — Gatilho de alerta identificado em campo

Durante a anamnese, o ACS marca, na Seção 16, que o trabalhador apresenta sintoma agudo compatível
com intoxicação. O gatilho recomenda encaminhamento prioritário; a UBS agenda avaliação clínica
(`AgroSUSAtendimentoUBS`) em caráter de prioridade.

### Cenário 3 — Avaliação clínica, suspeita de intoxicação e solicitação de exame

Na UBS, o profissional assistencial avalia o trabalhador, registra uma condição clínica de
suspeita de intoxicação (`AgroSUSIntoxicacaoPesticida`) e solicita exame de colinesterase
(`AgroSUSSolicitacaoExame`), informando a condição como justificativa clínica.

### Cenário 4 — Resultado alterado e conduta

O laboratório emite o resultado (`AgroSUSResultadoLaboratorial` / `AgroSUSLaudoLaboratorial`). O
percentual de inibição excede o Índice Biológico Máximo Permitido (ver
<a href="l2-decision-logic.html">componente 6</a>). O profissional assistencial registra a
condução: afastamento do contato com o defensivo por 30 dias e um plano de acompanhamento
(`AgroSUSPlanoAcompanhamento`) com reavaliação em 30 dias.

### Cenário 5 — Acompanhamento longitudinal e boas práticas

Em visitas subsequentes, o ACS reaplica os itens de boas práticas agrícolas (Seção 15) e de
vigilância (Seção 16). A UBS ajusta a periodicidade dos exames de colinesterase conforme a rotina
semestral mínima da NR-7, ou antecipa a reavaliação diante de novos gatilhos.

### Cenário 6 — Auditoria de acesso

Um gestor de segurança consulta o histórico de acessos e alterações de um registro específico do
trabalhador (`AgroSUSAuditEvent`, `AgroSUSProvenance`), sem participar do cuidado direto.
