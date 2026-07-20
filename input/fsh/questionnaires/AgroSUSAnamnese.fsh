Instance: agrosus-anamnese
InstanceOf: Questionnaire
Usage: #definition
Title: "Formulário de Anamnese AgroSUS"
Description: "Formulário de anamnese ocupacional e ambiental aplicado pelo Agente Comunitário de Saúde aos pequenos produtores rurais."

* url = "https://jefersonrl.github.io/AgroSUS-FHIR/Questionnaire/agrosus-anamnese"
* version = "0.1.0"
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