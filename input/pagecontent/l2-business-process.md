Componente 4 do DAK — *Processos de negócio e workflows*. Quatro macrofases, análogas em estrutura
às dos demais pathways da Plataforma mareIA (ver `mareIA-ig`), adaptadas ao fluxo assistencial do
AgroSUS.

`Cadastro → Triagem ocupacional (anamnese) → Resposta clínica e vigilância biológica → Acompanhamento longitudinal`

### Fase 1 — Cadastro

1. Identificação do trabalhador rural pelo ACS em sua área de abrangência.
2. Cadastro do trabalhador (`AgroSUSPatient`) e da propriedade rural (Seção 3 da anamnese).
3. Vínculo do ACS responsável (`AgroSUSACSRole`) e da UBS de referência (`AgroSUSUBS`).

### Fase 2 — Triagem ocupacional (anamnese)

1. Aplicação da anamnese ocupacional/ambiental em visita domiciliar (`AgroSUSVisitaACS` +
   `AgroSUSAnamneseResponse`), cobrindo propriedade, assistência técnica, capacitação, defensivos,
   rastreabilidade, exposição, EPI, armazenamento, destinação de embalagens, exposição familiar,
   condições de saúde, histórico de intoxicação e boas práticas.
2. Sincronização atômica e offline-first via `AgroSUSTransacaoVisita`.
3. Avaliação dos gatilhos de alerta (Seção 16 — ver <a href="l2-decision-logic.html">componente
   6</a>): sintoma agudo, produto categoria 1/2 sem EPI, histórico de intoxicação prévia.

### Fase 3 — Resposta clínica e vigilância biológica

1. Avaliação clínica na UBS (`AgroSUSAtendimentoUBS`), priorizada quando há gatilho de alerta.
2. Registro da condição clínica de suspeita/confirmação de intoxicação
   (`AgroSUSIntoxicacaoPesticida`), quando aplicável.
3. Solicitação de exame de colinesterase (`AgroSUSSolicitacaoExame`) — valor basal na admissão,
   rotina mínima semestral (NR-7 7.4.2.1), ou por gatilho (sintomático, retorno de afastamento,
   mudança de função).
4. Resultado laboratorial (`AgroSUSResultadoLaboratorial` / `AgroSUSLaudoLaboratorial`) e
   classificação por percentual de inibição.
5. Conduta frente a resultado alterado: afastamento do contato por 30 dias, reavaliação em 30 dias.

### Fase 4 — Acompanhamento longitudinal

1. Definição ou revisão do plano de acompanhamento (`AgroSUSPlanoAcompanhamento`), com
   periodicidade das reavaliações.
2. Reaplicação periódica da anamnese e dos itens de boas práticas (Seção 15) pelo ACS.
3. Registro de proveniência (`AgroSUSProvenance`) e auditoria (`AgroSUSAuditEvent`) de todas as
   operações.

### Tarefas × dados × decisões

| Tarefa | Dados (componente 5) | Decisão (componente 6) |
| --- | --- | --- |
| Anamnese ocupacional | Seções 1–15 do questionário | Gatilhos de alerta (Seção 16) |
| Monitoramento biológico | Colinesterase plasmática/sangue total (LOINC) | Classificação por percentual de inibição; periodicidade |
| Avaliação clínica | Condição, exames, laudo | Conduta frente a resultado alterado |
| Acompanhamento | Plano de acompanhamento, proveniência | Periodicidade das reavaliações |
