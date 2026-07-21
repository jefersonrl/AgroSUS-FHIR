Componente 3 do DAK — *Cenários de uso*. Narrativas ilustrativas de como as personas
(<a href="l2-personas.html">componente 2</a>) interagem nos processos de negócio
(<a href="l2-business-process.html">componente 4</a>). Cenários 7–10 derivados do diagrama de caso
de uso e do documento de requisitos do projeto (`sources/requisitos-caso-de-uso/`).

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

### Cenário 7 — Cadastro e gestão do produtor rural

O ACS cadastra o produtor rural e sua propriedade (`AgroSUSPatient`); o próprio produtor pode
visualizar seus dados cadastrais. Alterações e exclusões seguem as restrições de integridade do
cadastro (ex.: CPF único, vínculo obrigatório a uma UBS de referência).

### Cenário 8 — Triagem com lógica de decisão rule-based *(API de IA fora de escopo)*

O ACS preenche a ficha de triagem completa em campo. No documento de requisitos do projeto, essa
ficha seria enviada a uma API externa de Inteligência Artificial que classificaria
automaticamente o nível de risco do produtor. **Decisão da equipe (`docs/adr/0004`): essa
integração fica fora de escopo desta fase do IG.** A lógica de suporte à decisão efetivamente
implementada (`Library/AgroSUSIntoxicacaoLogic`, `PlanDefinition/AgroSUSEstratificacaoRisco`) usa
gatilhos discretos e o indicador objetivo de colinesterase, fundamentados em NR-7/NR-31 — não um
classificador de IA.

### Cenário 9 — Gestão do catálogo de biomarcadores pela UBS

A UBS mantém o catálogo de exames/biomarcadores disponíveis para solicitação (ex. colinesterase
plasmática e de sangue total), usado pelo profissional assistencial ao solicitar exames
(`AgroSUSSolicitacaoExame`) e refletido em `AgroSUSResultadosLaboratoriaisVS`.

### Cenário 10 — Reconexão e reprocessamento após operação offline

O aplicativo do ACS opera offline durante a visita domiciliar. Ao reconectar, sincroniza o
`Bundle` transacional (Cenário 1) com o registro completo da anamnese; a classificação por IA
mencionada no documento de requisitos do projeto (Cenário 8) permanece fora de escopo desta fase
(`docs/adr/0004`).
