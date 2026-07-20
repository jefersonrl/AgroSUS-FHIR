Profile: AgroSUSUBS
Parent: BRCoreOrganization
Id: agrosus-ubs
Title: "Unidade Básica de Saúde AgroSUS"
Description: "Perfil da Unidade Básica de Saúde responsável pelo acompanhamento do trabalhador rural no AgroSUS."

* active 1..1 MS
* active ^short = "Indica se a UBS está ativa"

* identifier[cnes] 1..1 MS
* identifier[cnes] ^short = "Código CNES da Unidade Básica de Saúde"

* identifier[cnpj] MS
* identifier[cnpj] ^short = "CNPJ da organização responsável pela UBS"

* name 1..1 MS
* name ^short = "Nome oficial da Unidade Básica de Saúde"

* type MS
* type ^short = "Tipo do estabelecimento de saúde"

* telecom MS
* telecom ^short = "Meios de contato da UBS"

* address MS
* address ^short = "Endereço da UBS"

* partOf MS
* partOf ^short = "Secretaria, rede ou organização à qual a UBS pertence"