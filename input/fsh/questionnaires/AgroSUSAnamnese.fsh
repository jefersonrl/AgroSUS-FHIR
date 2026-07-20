Instance: agrosus-anamnese
InstanceOf: Questionnaire
Usage: #definition
Title: "Formulário de Anamnese AgroSUS"
Description: "Formulário de anamnese ocupacional e ambiental aplicado pelo Agente Comunitário de Saúde aos pequenos produtores rurais."

* url = "https://jefersonrl.github.io/AgroSUS-FHIR/Questionnaire/agrosus-anamnese"
* version = "0.5.0"
* name = "AgroSUSAnamnese"
* title = "Formulário de Anamnese Ocupacional e Ambiental AgroSUS"
* status = #draft
* experimental = true
* date = "2026-07-20"
* publisher = "Fatec Ferraz de Vasconcelos"
* subjectType[0] = #Patient
* purpose = "Apoiar o registro e o acompanhamento de trabalhadores rurais expostos a defensivos agrícolas na Atenção Primária à Saúde."


// Seção 1 — Identificação do instrumento

* item[0].linkId = "identificacao-instrumento"
* item[0].text = "1. Identificação do instrumento"
* item[0].type = #group

* item[0].item[0].linkId = "id-agrosus"
* item[0].item[0].text = "Código do trabalhador (ID AgroSUS)"
* item[0].item[0].type = #string
* item[0].item[0].readOnly = true

* item[0].item[1].linkId = "numero-formulario"
* item[0].item[1].text = "Número do formulário"
* item[0].item[1].type = #string
* item[0].item[1].required = true

* item[0].item[2].linkId = "data-entrevista"
* item[0].item[2].text = "Data da entrevista"
* item[0].item[2].type = #date
* item[0].item[2].required = true

* item[0].item[3].linkId = "tipo-coleta"
* item[0].item[3].text = "Tipo de coleta"
* item[0].item[3].type = #choice
* item[0].item[3].required = true
* item[0].item[3].answerValueSet = Canonical(AgroSUSTipoColetaVS)

* item[0].item[4].linkId = "ubs-referencia"
* item[0].item[4].text = "UBS de referência"
* item[0].item[4].type = #string
* item[0].item[4].required = true

* item[0].item[5].linkId = "acs-responsavel"
* item[0].item[5].text = "ACS responsável"
* item[0].item[5].type = #string
* item[0].item[5].required = true

* item[0].item[6].linkId = "cnes-ubs"
* item[0].item[6].text = "CNES da UBS"
* item[0].item[6].type = #string
* item[0].item[6].required = true

* item[0].item[7].linkId = "ine-equipe"
* item[0].item[7].text = "Código INE da equipe"
* item[0].item[7].type = #string

* item[0].item[8].linkId = "municipio"
* item[0].item[8].text = "Município"
* item[0].item[8].type = #string
* item[0].item[8].required = true

* item[0].item[9].linkId = "bairro-localidade"
* item[0].item[9].text = "Bairro ou localidade"
* item[0].item[9].type = #string
* item[0].item[9].required = true

* item[0].item[10].linkId = "latitude"
* item[0].item[10].text = "Latitude"
* item[0].item[10].type = #decimal

* item[0].item[11].linkId = "longitude"
* item[0].item[11].text = "Longitude"
* item[0].item[11].type = #decimal

// Seção 2 — Dados pessoais do participante

* item[1].linkId = "dados-pessoais"
* item[1].text = "2. Dados pessoais do participante"
* item[1].type = #group

* item[1].item[0].linkId = "nome-completo"
* item[1].item[0].text = "Nome completo"
* item[1].item[0].type = #string
* item[1].item[0].required = true
* item[1].item[0].readOnly = true

* item[1].item[1].linkId = "cns"
* item[1].item[1].text = "Cartão Nacional de Saúde (CNS)"
* item[1].item[1].type = #string
* item[1].item[1].readOnly = true

* item[1].item[2].linkId = "cpf"
* item[1].item[2].text = "CPF"
* item[1].item[2].type = #string
* item[1].item[2].required = true
* item[1].item[2].readOnly = true

* item[1].item[3].linkId = "data-nascimento"
* item[1].item[3].text = "Data de nascimento"
* item[1].item[3].type = #date
* item[1].item[3].required = true
* item[1].item[3].readOnly = true

* item[1].item[4].linkId = "sexo"
* item[1].item[4].text = "Sexo"
* item[1].item[4].type = #choice
* item[1].item[4].required = true
* item[1].item[4].readOnly = true
* item[1].item[4].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Masculino"
* item[1].item[4].answerOption[1].valueCoding = http://hl7.org/fhir/administrative-gender#female "Feminino"
* item[1].item[4].answerOption[2].valueCoding = http://hl7.org/fhir/administrative-gender#unknown "Não declarado"

* item[1].item[5].linkId = "raca-cor"
* item[1].item[5].text = "Raça/cor autodeclarada"
* item[1].item[5].type = #choice
* item[1].item[5].required = true
* item[1].item[5].readOnly = true
* item[1].item[5].answerValueSet = "https://terminologia.saude.gov.br/fhir/ValueSet/BRRacaCor"

* item[1].item[6].linkId = "escolaridade"
* item[1].item[6].text = "Escolaridade"
* item[1].item[6].type = #choice
* item[1].item[6].answerValueSet = Canonical(AgroSUSEscolaridadeVS)

* item[1].item[7].linkId = "telefone"
* item[1].item[7].text = "Telefone de contato"
* item[1].item[7].type = #string
* item[1].item[7].readOnly = true

* item[1].item[8].linkId = "ocupacao-cbo"
* item[1].item[8].text = "Ocupação principal (CBO)"
* item[1].item[8].type = #choice
* item[1].item[8].answerValueSet = "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"

* item[1].item[9].linkId = "tempo-atividade-rural"
* item[1].item[9].text = "Tempo de atividade rural, em anos"
* item[1].item[9].type = #integer

* item[1].item[10].linkId = "tempo-trabalho-defensivos"
* item[1].item[10].text = "Tempo de trabalho com defensivos agrícolas, em anos"
* item[1].item[10].type = #integer

// Seção 3 — Caracterização da propriedade rural

* item[2].linkId = "caracterizacao-propriedade"
* item[2].text = "3. Caracterização da propriedade rural"
* item[2].type = #group

* item[2].item[0].linkId = "situacao-posse"
* item[2].item[0].text = "Situação de posse da terra"
* item[2].item[0].type = #choice
* item[2].item[0].answerValueSet = Canonical(AgroSUSSituacaoPosseVS)

* item[2].item[1].linkId = "area-total-hectares"
* item[2].item[1].text = "Área total da propriedade, em hectares"
* item[2].item[1].type = #decimal

* item[2].item[2].linkId = "area-producao-hectares"
* item[2].item[2].text = "Área destinada à produção agrícola, em hectares"
* item[2].item[2].type = #decimal

* item[2].item[3].linkId = "principal-atividade-agricola"
* item[2].item[3].text = "Principal atividade agrícola"
* item[2].item[3].type = #choice
* item[2].item[3].answerValueSet = Canonical(AgroSUSAtividadeAgricolaVS)

* item[2].item[4].linkId = "tipo-producao"
* item[2].item[4].text = "Tipo de produção"
* item[2].item[4].type = #choice
* item[2].item[4].answerValueSet = Canonical(AgroSUSTipoProducaoVS)

* item[2].item[5].linkId = "culturas-produzidas"
* item[2].item[5].text = "Culturas produzidas"
* item[2].item[5].type = #string
* item[2].item[5].repeats = true

* item[2].item[6].linkId = "fontes-agua"
* item[2].item[6].text = "Fontes de água utilizadas na propriedade"
* item[2].item[6].type = #choice
* item[2].item[6].repeats = true
* item[2].item[6].answerValueSet = Canonical(AgroSUSFonteAguaVS)

// Seção 4 — Assistência técnica e responsabilidade técnica

* item[3].linkId = "assistencia-responsabilidade-tecnica"
* item[3].text = "4. Assistência técnica e responsabilidade técnica"
* item[3].type = #group

* item[3].item[0].linkId = "recebe-assistencia-tecnica"
* item[3].item[0].text = "Você recebe assistência técnica para a produção agrícola?"
* item[3].item[0].type = #boolean
* item[3].item[0].required = true

* item[3].item[1].linkId = "instituicao-assistencia"
* item[3].item[1].text = "Qual instituição presta assistência técnica?"
* item[3].item[1].type = #choice
* item[3].item[1].repeats = true
* item[3].item[1].required = true
* item[3].item[1].answerValueSet = Canonical(AgroSUSInstituicaoAssistenciaVS)
* item[3].item[1].enableWhen[0].question = "recebe-assistencia-tecnica"
* item[3].item[1].enableWhen[0].operator = #=
* item[3].item[1].enableWhen[0].answerBoolean = true

* item[3].item[2].linkId = "instituicao-assistencia-outra"
* item[3].item[2].text = "Especifique a outra instituição"
* item[3].item[2].type = #string
* item[3].item[2].required = true
* item[3].item[2].enableWhen[0].question = "instituicao-assistencia"
* item[3].item[2].enableWhen[0].operator = #=
* item[3].item[2].enableWhen[0].answerCoding = AgroSUSAssistenciaTecnicaCS#instituicao-outra

* item[3].item[3].linkId = "possui-responsavel-tecnico"
* item[3].item[3].text = "Existe um responsável técnico habilitado que acompanha sua produção?"
* item[3].item[3].type = #boolean
* item[3].item[3].required = true

* item[3].item[4].linkId = "formacao-responsavel-tecnico"
* item[3].item[4].text = "Formação do responsável técnico"
* item[3].item[4].type = #choice
* item[3].item[4].required = true
* item[3].item[4].answerValueSet = Canonical(AgroSUSFormacaoResponsavelTecnicoVS)
* item[3].item[4].enableWhen[0].question = "possui-responsavel-tecnico"
* item[3].item[4].enableWhen[0].operator = #=
* item[3].item[4].enableWhen[0].answerBoolean = true

* item[3].item[5].linkId = "formacao-responsavel-outra"
* item[3].item[5].text = "Especifique a formação do outro profissional habilitado"
* item[3].item[5].type = #string
* item[3].item[5].required = true
* item[3].item[5].enableWhen[0].question = "formacao-responsavel-tecnico"
* item[3].item[5].enableWhen[0].operator = #=
* item[3].item[5].enableWhen[0].answerCoding = AgroSUSAssistenciaTecnicaCS#formacao-outro-habilitado

* item[3].item[6].linkId = "nome-responsavel-tecnico"
* item[3].item[6].text = "Nome do responsável técnico"
* item[3].item[6].type = #string
* item[3].item[6].required = true
* item[3].item[6].enableWhen[0].question = "possui-responsavel-tecnico"
* item[3].item[6].enableWhen[0].operator = #=
* item[3].item[6].enableWhen[0].answerBoolean = true

* item[3].item[7].linkId = "registro-profissional-responsavel"
* item[3].item[7].text = "Número de registro profissional (CREA, CRBio ou outro)"
* item[3].item[7].type = #string
* item[3].item[7].required = true
* item[3].item[7].enableWhen[0].question = "possui-responsavel-tecnico"
* item[3].item[7].enableWhen[0].operator = #=
* item[3].item[7].enableWhen[0].answerBoolean = true

* item[3].item[8].linkId = "contato-responsavel-tecnico"
* item[3].item[8].text = "Telefone ou contato do responsável técnico"
* item[3].item[8].type = #string
* item[3].item[8].enableWhen[0].question = "possui-responsavel-tecnico"
* item[3].item[8].enableWhen[0].operator = #=
* item[3].item[8].enableWhen[0].answerBoolean = true

// Seção 5 — Capacitação do trabalhador

* item[4].linkId = "capacitacao-trabalhador"
* item[4].text = "5. Capacitação do trabalhador"
* item[4].type = #group

* item[4].item[0].linkId = "participou-capacitacao"
* item[4].item[0].text = "Você já participou de treinamento ou capacitação sobre o uso correto e seguro de defensivos agrícolas?"
* item[4].item[0].type = #boolean
* item[4].item[0].required = true

* item[4].item[1].linkId = "data-ultima-capacitacao"
* item[4].item[1].text = "Quando ocorreu a última capacitação? Informe o mês e o ano"
* item[4].item[1].type = #date
* item[4].item[1].required = true
* item[4].item[1].enableWhen[0].question = "participou-capacitacao"
* item[4].item[1].enableWhen[0].operator = #=
* item[4].item[1].enableWhen[0].answerBoolean = true

* item[4].item[2].linkId = "responsavel-capacitacao"
* item[4].item[2].text = "Quem realizou a capacitação?"
* item[4].item[2].type = #string
* item[4].item[2].required = true
* item[4].item[2].enableWhen[0].question = "participou-capacitacao"
* item[4].item[2].enableWhen[0].operator = #=
* item[4].item[2].enableWhen[0].answerBoolean = true

* item[4].item[3].linkId = "recebe-orientacoes-periodicas"
* item[4].item[3].text = "Você recebe orientações periódicas sobre segurança no trabalho rural?"
* item[4].item[3].type = #boolean
* item[4].item[3].required = true

* item[4].item[4].linkId = "temas-capacitacao"
* item[4].item[4].text = "Temas abordados nas capacitações"
* item[4].item[4].type = #choice
* item[4].item[4].repeats = true
* item[4].item[4].required = true
* item[4].item[4].answerValueSet = Canonical(AgroSUSTemasCapacitacaoVS)
* item[4].item[4].enableWhen[0].question = "participou-capacitacao"
* item[4].item[4].enableWhen[0].operator = #=
* item[4].item[4].enableWhen[0].answerBoolean = true

* item[4].item[5].linkId = "outros-temas-capacitacao"
* item[4].item[5].text = "Especifique os outros temas abordados"
* item[4].item[5].type = #string
* item[4].item[5].required = true
* item[4].item[5].enableWhen[0].question = "temas-capacitacao"
* item[4].item[5].enableWhen[0].operator = #=
* item[4].item[5].enableWhen[0].answerCoding = AgroSUSCapacitacaoCS#outros