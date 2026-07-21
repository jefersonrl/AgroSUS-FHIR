Componente 2 do DAK — *Personas genéricas*. Fonte: diagrama de caso de uso e documento de
requisitos do projeto (`sources/requisitos-caso-de-uso/`), reconciliados com os perfis FHIR já
modelados em `input/fsh/profiles/` (ver <a href="artifacts.html">Artifact Index</a>). Cada persona
corresponde a um ou mais perfis FHIR.

<div style="text-align:center;">
<img src="agrosus-use-case.svg" alt="Diagrama de caso de uso do AgroSUS: atores Produtor Rural, Agente Comunitário (ACF), API Externa, Unidade Básica de Saúde e Médico" style="max-width:480px; width:100%; height:auto;"/>
<p><em>Diagrama de caso de uso do projeto (equipe FATEC Ferraz de Vasconcelos/CPS). O ator "API
Externa" (classificação de risco por IA) está fora de escopo desta fase do IG — ver
<code>docs/adr/0004-caso-de-uso-fatec-personas-cenarios.md</code>.</em></p>
</div>

| Persona | Descrição | Perfil(is) FHIR |
| --- | --- | --- |
| Produtor Rural (Trabalhador rural) | Pequeno produtor rural acompanhado pelo AgroSUS; sujeito da anamnese, dos exames e do plano de acompanhamento. Mantém e visualiza seu próprio cadastro. | `AgroSUSPatient` |
| Agente Comunitário (ACS/ACF) | Aplica e atualiza a anamnese em visita domiciliar; realiza a triagem ocupacional; primeiro ponto de contato e de identificação de gatilhos de alerta em campo. Também referido como "Agente Comunitário Familiar (ACF)" no documento de requisitos do projeto — mesmo papel de `AgroSUSACS`. | `AgroSUSACS`, `AgroSUSACSRole`, `AgroSUSVisitaACS` |
| Médico / Profissional assistencial da UBS | Médico, enfermeiro ou técnico de enfermagem responsável pela avaliação clínica, solicitação de exames, registro da condição clínica e definição do plano de acompanhamento. | `AgroSUSProfissionalUBS`, `AgroSUSProfissionalUBSRole`, `AgroSUSAtendimentoUBS` |
| Laboratório | Organização responsável pela realização e emissão de resultados de exames laboratoriais, incluindo a colinesterase. | `AgroSUSLaboratorio`, `AgroSUSResultadoLaboratorial`, `AgroSUSLaudoLaboratorial` |
| Unidade Básica de Saúde (UBS) | Organização responsável pelo acompanhamento longitudinal do trabalhador rural, pela gestão do catálogo de exames/biomarcadores disponíveis e serviço a que ACS e profissionais assistenciais estão vinculados. | `AgroSUSUBS` |
| Auditor / gestor de segurança | Consulta trilhas de auditoria e proveniência dos registros, sem participar do cuidado direto. | `AgroSUSAuditEvent`, `AgroSUSProvenance` |
| *(fora de escopo)* Agente de classificação de risco — API externa | Ator descrito no documento de requisitos do projeto: recebe os dados da triagem e classifica automaticamente o nível de risco por Inteligência Artificial. **Decisão da equipe: fora de escopo desta fase do IG** — mantida a lógica rule-based (`Library/AgroSUSIntoxicacaoLogic`), sem artefato FHIR para essa integração. Ver `docs/adr/0004-caso-de-uso-fatec-personas-cenarios.md`. | — |

Estas personas interagem nos <a href="l2-user-scenarios.html">cenários de uso</a> e nos
<a href="l2-business-process.html">processos de negócio</a> descritos a seguir.
