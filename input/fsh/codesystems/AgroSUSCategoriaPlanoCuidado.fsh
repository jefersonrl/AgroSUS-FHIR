CodeSystem: AgroSUSCategoriaPlanoCuidadoCS
Id: agrosus-categoria-plano-cuidado
Title: "Categorias de Plano de Cuidado AgroSUS"
Description: "Categorias utilizadas para classificar os planos longitudinais de acompanhamento do trabalhador rural."

* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #monitoramento-exposicao
    "Monitoramento de exposição ocupacional"
    "Acompanhamento longitudinal de trabalhador exposto a defensivos agrícolas, sem suspeita clínica atual de intoxicação."

* #investigacao-intoxicacao
    "Investigação de possível intoxicação"
    "Plano destinado à investigação e ao acompanhamento de uma suspeita clínica de intoxicação por pesticida."

* #seguimento-pos-intoxicacao
    "Seguimento após intoxicação"
    "Acompanhamento longitudinal após confirmação ou tratamento de intoxicação por pesticida."


ValueSet: AgroSUSCategoriaPlanoCuidadoVS
Id: agrosus-categoria-plano-cuidado
Title: "Categorias de Plano de Cuidado AgroSUS"
Description: "Categorias permitidas para os planos de acompanhamento AgroSUS."

* ^status = #active
* ^experimental = false

* include codes from system AgroSUSCategoriaPlanoCuidadoCS