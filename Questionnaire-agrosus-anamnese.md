# Formulário de Anamnese AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Formulário de Anamnese AgroSUS**

## Questionnaire: Formulário de Anamnese AgroSUS
Branch:



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "agrosus-anamnese",
  "language" : "pt-BR",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/Questionnaire/agrosus-anamnese",
  "version" : "0.1.0",
  "name" : "AgroSUSAnamnese",
  "title" : "Formulário de Anamnese Ocupacional e Ambiental AgroSUS",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2026-07-21",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Formulário de anamnese ocupacional e ambiental aplicado pelo Agente Comunitário de Saúde aos pequenos produtores rurais.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Apoiar o registro e o acompanhamento de trabalhadores rurais expostos a defensivos agrícolas na Atenção Primária à Saúde.",
  "item" : [{
    "linkId" : "identificacao-instrumento",
    "text" : "1. Identificação do instrumento",
    "type" : "group",
    "item" : [{
      "linkId" : "id-agrosus",
      "text" : "Código do trabalhador (ID AgroSUS)",
      "type" : "string",
      "readOnly" : true
    },
    {
      "linkId" : "numero-formulario",
      "text" : "Número do formulário",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "data-entrevista",
      "text" : "Data da entrevista",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "tipo-coleta",
      "text" : "Tipo de coleta",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-tipo-coleta"
    },
    {
      "linkId" : "ubs-referencia",
      "text" : "UBS de referência",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "acs-responsavel",
      "text" : "ACS responsável",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "cnes-ubs",
      "text" : "CNES da UBS",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "ine-equipe",
      "text" : "Código INE da equipe",
      "type" : "string"
    },
    {
      "linkId" : "municipio",
      "text" : "Município",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "bairro-localidade",
      "text" : "Bairro ou localidade",
      "type" : "string",
      "required" : true
    },
    {
      "linkId" : "latitude",
      "text" : "Latitude",
      "type" : "decimal"
    },
    {
      "linkId" : "longitude",
      "text" : "Longitude",
      "type" : "decimal"
    }]
  },
  {
    "linkId" : "dados-pessoais",
    "text" : "2. Dados pessoais do participante",
    "type" : "group",
    "item" : [{
      "linkId" : "nome-completo",
      "text" : "Nome completo",
      "type" : "string",
      "required" : true,
      "readOnly" : true
    },
    {
      "linkId" : "cns",
      "text" : "Cartão Nacional de Saúde (CNS)",
      "type" : "string",
      "readOnly" : true
    },
    {
      "linkId" : "cpf",
      "text" : "CPF",
      "type" : "string",
      "required" : true,
      "readOnly" : true
    },
    {
      "linkId" : "data-nascimento",
      "text" : "Data de nascimento",
      "type" : "date",
      "required" : true,
      "readOnly" : true
    },
    {
      "linkId" : "sexo",
      "text" : "Sexo",
      "type" : "choice",
      "required" : true,
      "readOnly" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "pt-BR"
              },
              {
                "url" : "content",
                "valueString" : "Masculino"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female",
          "display" : "Female",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "pt-BR"
              },
              {
                "url" : "content",
                "valueString" : "Feminino"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      },
      {
        "valueCoding" : {
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "unknown",
          "display" : "Unknown",
          "_display" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "pt-BR"
              },
              {
                "url" : "content",
                "valueString" : "Não declarado"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          }
        }
      }]
    },
    {
      "linkId" : "raca-cor",
      "text" : "Raça/cor autodeclarada",
      "type" : "choice",
      "required" : true,
      "readOnly" : true,
      "answerValueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRRacaCor"
    },
    {
      "linkId" : "escolaridade",
      "text" : "Escolaridade",
      "type" : "choice",
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-escolaridade"
    },
    {
      "linkId" : "telefone",
      "text" : "Telefone de contato",
      "type" : "string",
      "readOnly" : true
    },
    {
      "linkId" : "ocupacao-cbo",
      "text" : "Ocupação principal (CBO)",
      "type" : "choice",
      "answerValueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
    },
    {
      "linkId" : "tempo-atividade-rural",
      "text" : "Tempo de atividade rural, em anos",
      "type" : "integer"
    },
    {
      "linkId" : "tempo-trabalho-defensivos",
      "text" : "Tempo de trabalho com defensivos agrícolas, em anos",
      "type" : "integer"
    }]
  },
  {
    "linkId" : "caracterizacao-propriedade",
    "text" : "3. Caracterização da propriedade rural",
    "type" : "group",
    "item" : [{
      "linkId" : "situacao-posse",
      "text" : "Situação de posse da terra",
      "type" : "choice",
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-situacao-posse"
    },
    {
      "linkId" : "area-total-hectares",
      "text" : "Área total da propriedade, em hectares",
      "type" : "decimal"
    },
    {
      "linkId" : "area-producao-hectares",
      "text" : "Área destinada à produção agrícola, em hectares",
      "type" : "decimal"
    },
    {
      "linkId" : "principal-atividade-agricola",
      "text" : "Principal atividade agrícola",
      "type" : "choice",
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-atividade-agricola"
    },
    {
      "linkId" : "tipo-producao",
      "text" : "Tipo de produção",
      "type" : "choice",
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-tipo-producao"
    },
    {
      "linkId" : "culturas-produzidas",
      "text" : "Culturas produzidas",
      "type" : "string",
      "repeats" : true
    },
    {
      "linkId" : "fontes-agua",
      "text" : "Fontes de água utilizadas na propriedade",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-fonte-agua"
    }]
  },
  {
    "linkId" : "assistencia-responsabilidade-tecnica",
    "text" : "4. Assistência técnica e responsabilidade técnica",
    "type" : "group",
    "item" : [{
      "linkId" : "recebe-assistencia-tecnica",
      "text" : "Você recebe assistência técnica para a produção agrícola?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "instituicao-assistencia",
      "text" : "Qual instituição presta assistência técnica?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "recebe-assistencia-tecnica",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-instituicao-assistencia"
    },
    {
      "linkId" : "instituicao-assistencia-outra",
      "text" : "Especifique a outra instituição",
      "type" : "string",
      "enableWhen" : [{
        "question" : "instituicao-assistencia",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-assistencia-tecnica",
          "code" : "instituicao-outra"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "possui-responsavel-tecnico",
      "text" : "Existe um responsável técnico habilitado que acompanha sua produção?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "formacao-responsavel-tecnico",
      "text" : "Formação do responsável técnico",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "possui-responsavel-tecnico",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-formacao-responsavel-tecnico"
    },
    {
      "linkId" : "formacao-responsavel-outra",
      "text" : "Especifique a formação do outro profissional habilitado",
      "type" : "string",
      "enableWhen" : [{
        "question" : "formacao-responsavel-tecnico",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-assistencia-tecnica",
          "code" : "formacao-outro-habilitado"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "nome-responsavel-tecnico",
      "text" : "Nome do responsável técnico",
      "type" : "string",
      "enableWhen" : [{
        "question" : "possui-responsavel-tecnico",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "registro-profissional-responsavel",
      "text" : "Número de registro profissional (CREA, CRBio ou outro)",
      "type" : "string",
      "enableWhen" : [{
        "question" : "possui-responsavel-tecnico",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "contato-responsavel-tecnico",
      "text" : "Telefone ou contato do responsável técnico",
      "type" : "string",
      "enableWhen" : [{
        "question" : "possui-responsavel-tecnico",
        "operator" : "=",
        "answerBoolean" : true
      }]
    }]
  },
  {
    "linkId" : "capacitacao-trabalhador",
    "text" : "5. Capacitação do trabalhador",
    "type" : "group",
    "item" : [{
      "linkId" : "participou-capacitacao",
      "text" : "Você já participou de treinamento ou capacitação sobre o uso correto e seguro de defensivos agrícolas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "data-ultima-capacitacao",
      "text" : "Quando ocorreu a última capacitação? Informe o mês e o ano",
      "type" : "date",
      "enableWhen" : [{
        "question" : "participou-capacitacao",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "responsavel-capacitacao",
      "text" : "Quem realizou a capacitação?",
      "type" : "string",
      "enableWhen" : [{
        "question" : "participou-capacitacao",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "recebe-orientacoes-periodicas",
      "text" : "Você recebe orientações periódicas sobre segurança no trabalho rural?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "temas-capacitacao",
      "text" : "Temas abordados nas capacitações",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "participou-capacitacao",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-temas-capacitacao"
    },
    {
      "linkId" : "outros-temas-capacitacao",
      "text" : "Especifique os outros temas abordados",
      "type" : "string",
      "enableWhen" : [{
        "question" : "temas-capacitacao",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-capacitacao",
          "code" : "outros"
        }
      }],
      "required" : true
    }]
  },
  {
    "linkId" : "defensivos-conformidade",
    "text" : "6. Defensivos agrícolas utilizados e conformidade legal",
    "type" : "group",
    "item" : [{
      "linkId" : "possui-receituario-agronomico",
      "text" : "Possui receituário agronômico para aquisição e utilização dos defensivos agrícolas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "orientacao-verificacao-receituario",
      "text" : "Se houver receituário, verifique sua vigência e correspondência com os produtos efetivamente utilizados.",
      "type" : "display"
    },
    {
      "linkId" : "receituario-vigente",
      "text" : "O receituário agronômico está vigente?",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "possui-receituario-agronomico",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "receituario-corresponde-produtos",
      "text" : "O receituário corresponde aos produtos efetivamente utilizados na propriedade?",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "possui-receituario-agronomico",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "utiliza-produto-irregular",
      "text" : "Utiliza produto sem registro, vencido ou de origem desconhecida?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "defensivo-utilizado",
      "text" : "Defensivo agrícola utilizado",
      "type" : "group",
      "repeats" : true,
      "item" : [{
        "linkId" : "defensivo-nome-comercial",
        "text" : "Nome comercial",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "defensivo-principio-ativo",
        "text" : "Princípio ativo",
        "type" : "string",
        "required" : true
      },
      {
        "linkId" : "defensivo-classe-uso",
        "text" : "Classe de uso",
        "type" : "string"
      },
      {
        "linkId" : "defensivo-classificacao-toxicologica",
        "text" : "Classe toxicológica ou de perigo",
        "type" : "choice",
        "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-classificacao-toxicologica"
      },
      {
        "linkId" : "defensivo-numero-registro",
        "text" : "Número de registro Anvisa/MAPA",
        "type" : "string"
      }]
    }]
  },
  {
    "linkId" : "rastreabilidade-aplicacoes",
    "text" : "7. Rastreabilidade das aplicações",
    "type" : "group",
    "item" : [{
      "linkId" : "registra-datas-aplicacao",
      "text" : "Registra as datas das aplicações de defensivos agrícolas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "registra-produtos-aplicados",
      "text" : "Mantém registro dos produtos comerciais utilizados em cada aplicação?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "registra-quantidade-aplicada",
      "text" : "Registra a quantidade aplicada, como dose ou volume?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "registra-responsavel-aplicacao",
      "text" : "Registra quem realizou cada aplicação?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "registra-cultura-tratada",
      "text" : "Registra qual cultura foi tratada em cada aplicação?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "armazenamento-registros-aplicacao",
      "text" : "Onde os registros das aplicações são armazenados?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-armazenamento-registros"
    },
    {
      "linkId" : "tempo-guarda-registros",
      "text" : "Por quanto tempo os registros são guardados?",
      "type" : "string"
    },
    {
      "linkId" : "registros-disponiveis-consulta",
      "text" : "Os registros estão disponíveis para consulta pela equipe de saúde?",
      "type" : "boolean",
      "required" : true
    }]
  },
  {
    "linkId" : "frequencia-forma-exposicao",
    "text" : "8. Frequência e forma de exposição",
    "type" : "group",
    "item" : [{
      "linkId" : "dias-aplicacao-mes",
      "text" : "Quantos dias por mês realiza aplicação de defensivos agrícolas?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-dias-aplicacao-mes"
    },
    {
      "linkId" : "horas-aplicacao-dia",
      "text" : "Durante quantas horas por dia realiza a aplicação?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-horas-aplicacao-dia"
    },
    {
      "linkId" : "meses-maior-intensidade",
      "text" : "Em quais meses do ano ocorre maior intensidade de uso?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-mes-maior-intensidade"
    },
    {
      "linkId" : "data-ultima-aplicacao",
      "text" : "Data da última aplicação",
      "type" : "date"
    },
    {
      "linkId" : "equipamento-aplicacao",
      "text" : "Qual tipo de equipamento é utilizado na aplicação?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-equipamento-aplicacao"
    },
    {
      "linkId" : "via-exposicao-mais-comum",
      "text" : "Qual é a via de exposição mais comum?",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-via-exposicao"
    },
    {
      "linkId" : "responsavel-aplicacao",
      "text" : "Quem realiza a aplicação dos defensivos agrícolas?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-responsavel-aplicacao"
    },
    {
      "linkId" : "outro-responsavel-aplicacao",
      "text" : "Informe quem é o outro responsável pela aplicação",
      "type" : "string",
      "enableWhen" : [{
        "question" : "responsavel-aplicacao",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao",
          "code" : "outro"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "outras-pessoas-durante-aplicacao",
      "text" : "Há presença de outras pessoas durante a aplicação dos defensivos?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "criancas-idosos-proximos-aplicacao",
      "text" : "Há crianças ou idosos próximos à área durante a aplicação?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "respeita-intervalo-reentrada",
      "text" : "O intervalo de reentrada na lavoura após a aplicação é habitualmente respeitado?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "observa-condicoes-climaticas",
      "text" : "As condições climáticas, como vento, chuva e temperatura, são observadas antes de iniciar a pulverização?",
      "type" : "boolean",
      "required" : true
    }]
  },
  {
    "linkId" : "equipamentos-protecao-individual",
    "text" : "9. Equipamentos de Proteção Individual",
    "type" : "group",
    "item" : [{
      "linkId" : "uso-mascara-respiratoria",
      "text" : "Máscara respiratória PFF2/PFF3 ou com filtro químico",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-touca-arabe",
      "text" : "Touca árabe",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-luvas",
      "text" : "Luvas de nitrila, neoprene ou borracha",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-avental-impermeavel",
      "text" : "Avental impermeável",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-botas-borracha",
      "text" : "Botas de borracha",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-oculos-protecao",
      "text" : "Óculos de proteção",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-macacao-impermeavel",
      "text" : "Macacão ou roupa impermeável",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "uso-protetor-auricular",
      "text" : "Protetor auricular",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "equipamento-aplicacao",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao",
          "code" : "pulverizador-costal-motorizado"
        }
      },
      {
        "question" : "equipamento-aplicacao",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao",
          "code" : "trator-com-barra"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-frequencia-uso-epi"
    },
    {
      "linkId" : "epis-boas-condicoes",
      "text" : "Os EPIs estão em boas condições de uso e conservação?",
      "type" : "boolean"
    },
    {
      "linkId" : "substitui-filtros-mascara",
      "text" : "Os filtros da máscara respiratória são substituídos periodicamente conforme recomendação do fabricante?",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "uso-mascara-respiratoria",
        "operator" : "!=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-epi",
          "code" : "nao-possui"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "higieniza-epis-apos-uso",
      "text" : "Realiza a lavagem e a higienização dos EPIs após cada uso?",
      "type" : "boolean"
    },
    {
      "linkId" : "armazenamento-epis",
      "text" : "Onde os EPIs são armazenados?",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-armazenamento-epi"
    },
    {
      "linkId" : "outro-armazenamento-epis",
      "text" : "Informe o outro local de armazenamento dos EPIs",
      "type" : "string",
      "enableWhen" : [{
        "question" : "armazenamento-epis",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-epi",
          "code" : "outro"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "motivo-nao-utilizar-epi",
      "text" : "Qual o motivo de não utilizar os EPIs, quando aplicável?",
      "type" : "choice",
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-motivo-nao-uso-epi"
    },
    {
      "linkId" : "outro-motivo-nao-utilizar-epi",
      "text" : "Informe o outro motivo de não utilizar os EPIs",
      "type" : "string",
      "enableWhen" : [{
        "question" : "motivo-nao-utilizar-epi",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-epi",
          "code" : "outro"
        }
      }],
      "required" : true
    }]
  },
  {
    "linkId" : "armazenamento-defensivos",
    "text" : "10. Armazenamento dos defensivos agrícolas",
    "type" : "group",
    "item" : [{
      "linkId" : "local-armazenamento-defensivos",
      "text" : "Onde os defensivos agrícolas são armazenados?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-local-armazenamento-defensivos"
    },
    {
      "linkId" : "outro-local-armazenamento-defensivos",
      "text" : "Informe o outro local de armazenamento",
      "type" : "string",
      "enableWhen" : [{
        "question" : "local-armazenamento-defensivos",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-armazenamento-defensivos",
          "code" : "outro"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "deposito-ventilacao-adequada",
      "text" : "O depósito possui ventilação adequada?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "deposito-piso-impermeavel",
      "text" : "O depósito possui piso impermeável?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "deposito-prateleiras-apropriadas",
      "text" : "O depósito possui prateleiras apropriadas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "deposito-fechadura-seguranca",
      "text" : "O depósito possui fechadura ou tranca de segurança?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "deposito-sinalizacao-risco",
      "text" : "O depósito possui sinalização de risco e perigo?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "deposito-extintor-incendio",
      "text" : "Há extintor de incêndio disponível no depósito?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "defensivos-separados-alimentos",
      "text" : "Os defensivos são armazenados separadamente de alimentos?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "defensivos-separados-fontes-agua",
      "text" : "Os defensivos são armazenados separadamente de fontes de água?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "defensivos-separados-roupas-epis",
      "text" : "Os defensivos são armazenados separadamente de roupas e EPIs?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "nenhum-defensivo-na-residencia",
      "text" : "Nenhum defensivo agrícola é armazenado dentro da residência?",
      "type" : "boolean",
      "required" : true
    }]
  },
  {
    "linkId" : "destinacao-embalagens-vazias",
    "text" : "11. Destinação das embalagens vazias",
    "type" : "group",
    "item" : [{
      "linkId" : "realiza-triplice-lavagem",
      "text" : "Realiza a tríplice lavagem ou lavagem sob pressão das embalagens, quando aplicável?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "devolve-embalagens-local-autorizado",
      "text" : "Realiza a devolução das embalagens vazias em locais autorizados?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "local-devolucao-embalagens",
      "text" : "Qual é o local de devolução das embalagens?",
      "type" : "string",
      "enableWhen" : [{
        "question" : "devolve-embalagens-local-autorizado",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    },
    {
      "linkId" : "tempo-medio-para-devolucao",
      "text" : "Qual é o tempo médio entre o término do produto e a devolução da embalagem?",
      "type" : "string",
      "enableWhen" : [{
        "question" : "devolve-embalagens-local-autorizado",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "destino-embalagens-nao-devolvidas",
      "text" : "Caso não realize a devolução, qual é o destino das embalagens?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "devolve-embalagens-local-autorizado",
        "operator" : "=",
        "answerBoolean" : false
      }],
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-destinacao-embalagens-nao-devolvidas"
    },
    {
      "linkId" : "outro-destino-embalagens",
      "text" : "Informe o outro destino dado às embalagens",
      "type" : "string",
      "enableWhen" : [{
        "question" : "destino-embalagens-nao-devolvidas",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-destinacao-embalagens",
          "code" : "outro"
        }
      }],
      "required" : true
    }]
  },
  {
    "linkId" : "exposicao-familiar-ambiental",
    "text" : "12. Exposição familiar e ambiental",
    "type" : "group",
    "item" : [{
      "linkId" : "familiares-auxiliam-aplicacao",
      "text" : "Familiares auxiliam na aplicação de defensivos agrícolas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "familiares-que-auxiliam",
      "text" : "Quais familiares auxiliam na aplicação?",
      "type" : "choice",
      "enableWhen" : [{
        "question" : "familiares-auxiliam-aplicacao",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-familiares-auxiliam-aplicacao"
    },
    {
      "linkId" : "outros-familiares-que-auxiliam",
      "text" : "Informe quais são os outros familiares",
      "type" : "string",
      "enableWhen" : [{
        "question" : "familiares-que-auxiliam",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao-familiar",
          "code" : "outros"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "criancas-acesso-area-ou-deposito",
      "text" : "Crianças ou adolescentes têm acesso às áreas de aplicação ou ao depósito de armazenamento?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "fonte-agua-proxima-aplicacao",
      "text" : "Há nascente, rio, córrego, açude ou poço próximo à área onde os defensivos são aplicados?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "moradias-proximas-aplicacao",
      "text" : "Há moradias próximas da área de aplicação, como casas de vizinhos, agregados ou trabalhadores?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "risco-deriva-propriedades-vizinhas",
      "text" : "Há risco de deriva da calda defensiva para áreas ou propriedades vizinhas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "agua-proxima-usada-consumo",
      "text" : "A água da fonte próxima à área de aplicação é utilizada para consumo humano ou animal?",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "fonte-agua-proxima-aplicacao",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "required" : true
    }]
  },
  {
    "linkId" : "condicoes-saude-sintomas",
    "text" : "13. Condições de saúde e sintomas",
    "type" : "group",
    "item" : [{
      "linkId" : "condicoes-saude-referidas",
      "text" : "Quais condições de saúde preexistentes foram referidas pelo trabalhador?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-condicao-saude-referida"
    },
    {
      "linkId" : "tipo-cancer-referido",
      "text" : "Informe qual tipo de câncer foi referido",
      "type" : "string",
      "enableWhen" : [{
        "question" : "condicoes-saude-referidas",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
          "code" : "condicao-cancer"
        }
      }],
      "required" : true
    },
    {
      "linkId" : "medicamentos-uso-continuo",
      "text" : "Medicamentos em uso contínuo",
      "type" : "text"
    },
    {
      "linkId" : "tabagismo",
      "text" : "O trabalhador faz uso de produtos derivados do tabaco?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "uso-regular-alcool",
      "text" : "O trabalhador faz uso regular de bebidas alcoólicas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "orientacao-sintomas",
      "text" : "Informe, para cada sinal ou sintoma, se ocorreu nos últimos 30 dias e se surgiu ou piorou após a aplicação de defensivo agrícola.",
      "type" : "display"
    },
    {
      "linkId" : "avaliacao-cefaleia-frequente",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-cefaleia-frequente"
      }],
      "text" : "Dor de cabeça (cefaleia) frequente",
      "type" : "group",
      "item" : [{
        "linkId" : "cefaleia-frequente-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "cefaleia-frequente-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "cefaleia-frequente-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-tontura-vertigem",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-tontura-vertigem"
      }],
      "text" : "Tontura ou vertigem",
      "type" : "group",
      "item" : [{
        "linkId" : "tontura-vertigem-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "tontura-vertigem-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "tontura-vertigem-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-nauseas",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-nauseas"
      }],
      "text" : "Náuseas",
      "type" : "group",
      "item" : [{
        "linkId" : "nauseas-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "nauseas-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "nauseas-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-vomitos",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-vomitos"
      }],
      "text" : "Vômitos",
      "type" : "group",
      "item" : [{
        "linkId" : "vomitos-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "vomitos-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "vomitos-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-diarreia-colicas",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-diarreia-colicas-abdominais"
      }],
      "text" : "Diarreia ou cólicas abdominais",
      "type" : "group",
      "item" : [{
        "linkId" : "diarreia-colicas-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "diarreia-colicas-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "diarreia-colicas-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-tremores-contracoes",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-tremores-contracoes-involuntarias"
      }],
      "text" : "Tremores ou contrações musculares involuntárias",
      "type" : "group",
      "item" : [{
        "linkId" : "tremores-contracoes-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "tremores-contracoes-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "tremores-contracoes-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-fraqueza-cansaco",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-fraqueza-cansaco-extremo"
      }],
      "text" : "Fraqueza ou cansaço extremo",
      "type" : "group",
      "item" : [{
        "linkId" : "fraqueza-cansaco-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "fraqueza-cansaco-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "fraqueza-cansaco-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-diaforese",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-diaforese"
      }],
      "text" : "Suor excessivo (diaforese)",
      "type" : "group",
      "item" : [{
        "linkId" : "diaforese-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "diaforese-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "diaforese-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-hipersalivacao",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-hipersalivacao"
      }],
      "text" : "Salivação excessiva (hipersalivação)",
      "type" : "group",
      "item" : [{
        "linkId" : "hipersalivacao-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "hipersalivacao-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "hipersalivacao-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-irritacao-ocular",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-irritacao-ocular"
      }],
      "text" : "Irritação nos olhos, lacrimejamento ou hiperemia",
      "type" : "group",
      "item" : [{
        "linkId" : "irritacao-ocular-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "irritacao-ocular-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "irritacao-ocular-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-irritacao-pele",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-irritacao-dermatite-pele"
      }],
      "text" : "Irritação ou dermatite na pele",
      "type" : "group",
      "item" : [{
        "linkId" : "irritacao-pele-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "irritacao-pele-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "irritacao-pele-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-dispneia",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-dispneia"
      }],
      "text" : "Falta de ar ou dispneia",
      "type" : "group",
      "item" : [{
        "linkId" : "dispneia-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "dispneia-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "dispneia-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-tosse-frequente",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-tosse-frequente"
      }],
      "text" : "Tosse seca ou produtiva frequente",
      "type" : "group",
      "item" : [{
        "linkId" : "tosse-frequente-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "tosse-frequente-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "tosse-frequente-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-palpitacoes",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-palpitacoes"
      }],
      "text" : "Palpitações ou batimentos irregulares",
      "type" : "group",
      "item" : [{
        "linkId" : "palpitacoes-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "palpitacoes-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "palpitacoes-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-alteracao-visual",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-alteracao-visual"
      }],
      "text" : "Alteração visual ou visão turva",
      "type" : "group",
      "item" : [{
        "linkId" : "alteracao-visual-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "alteracao-visual-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "alteracao-visual-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-confusao-desorientacao",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-confusao-desorientacao"
      }],
      "text" : "Confusão mental ou desorientação",
      "type" : "group",
      "item" : [{
        "linkId" : "confusao-desorientacao-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "confusao-desorientacao-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "confusao-desorientacao-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-memoria-concentracao",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-dificuldade-memoria-concentracao"
      }],
      "text" : "Dificuldade de memória ou concentração",
      "type" : "group",
      "item" : [{
        "linkId" : "memoria-concentracao-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "memoria-concentracao-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "memoria-concentracao-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-disturbios-sono",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-disturbios-sono"
      }],
      "text" : "Distúrbios do sono, insônia ou hipersonia",
      "type" : "group",
      "item" : [{
        "linkId" : "disturbios-sono-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "disturbios-sono-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "disturbios-sono-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-formigamento-membros",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-formigamento-membros"
      }],
      "text" : "Formigamento nos membros, como mãos, pés ou pernas",
      "type" : "group",
      "item" : [{
        "linkId" : "formigamento-membros-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "formigamento-membros-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "formigamento-membros-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    },
    {
      "linkId" : "avaliacao-irritabilidade-humor",
      "code" : [{
        "system" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-condicoes-sintomas",
        "code" : "sintoma-irritabilidade-alteracoes-humor"
      }],
      "text" : "Irritabilidade ou alterações de humor",
      "type" : "group",
      "item" : [{
        "linkId" : "irritabilidade-humor-presente",
        "text" : "Apresentou este sintoma nos últimos 30 dias?",
        "type" : "boolean",
        "required" : true
      },
      {
        "linkId" : "irritabilidade-humor-apos-aplicacao",
        "text" : "O sintoma surgiu ou piorou após aplicação de defensivo agrícola?",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "irritabilidade-humor-presente",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "required" : true
      }]
    }]
  },
  {
    "linkId" : "historico-intoxicacao-vigilancia",
    "text" : "14. Histórico de intoxicação e vigilância em saúde",
    "type" : "group",
    "item" : [{
      "linkId" : "procurou-atendimento-sintomas-defensivos",
      "text" : "Já procurou atendimento de saúde por sintomas que acreditava estarem relacionados ao uso de defensivos agrícolas?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "intoxicacao-confirmada-medico",
      "text" : "Já teve intoxicação por defensivo agrícola confirmada por médico?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "hospitalizacao-por-intoxicacao",
      "text" : "Já foi hospitalizado em decorrência de intoxicação por defensivo agrícola?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "caso-notificado-sinan",
      "text" : "O caso foi notificado no Sistema de Informação de Agravos de Notificação (SINAN)?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "cat-emitida",
      "text" : "Foi emitida Comunicação de Acidente de Trabalho (CAT) em decorrência do evento?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "acompanhamento-cerest",
      "text" : "Já recebeu visita ou acompanhamento do Centro de Referência em Saúde do Trabalhador (CEREST)?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "encaminhamento-apos-evento",
      "text" : "Houve encaminhamento para UBS, CEREST ou outro serviço de saúde especializado após o evento?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "numero-intoxicacoes-agudas-autorreferidas",
      "text" : "Número de intoxicações agudas anteriores autorreferidas",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-numero-intoxicacoes-agudas"
    }]
  },
  {
    "linkId" : "indicadores-boas-praticas",
    "text" : "15. Indicadores de boas práticas agrícolas",
    "type" : "group",
    "item" : [{
      "linkId" : "boa-pratica-assistencia-tecnica",
      "text" : "Recebe assistência técnica para a produção",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-responsavel-tecnico",
      "text" : "Possui responsável técnico habilitado pela produção",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-receituario-vigente",
      "text" : "Possui receituário agronômico vigente",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-capacitacao-uso-seguro",
      "text" : "Participou de capacitação em uso seguro de defensivos",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-uso-adequado-epis",
      "text" : "Utiliza EPIs de forma adequada durante a aplicação",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-higienizacao-epis",
      "text" : "Realiza higienização correta dos EPIs após o uso",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-armazenamento-defensivos",
      "text" : "Armazena os defensivos em local adequado e seguro",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-triplice-lavagem",
      "text" : "Realiza tríplice lavagem das embalagens vazias",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-devolucao-embalagens",
      "text" : "Devolve embalagens vazias nos pontos de coleta autorizados",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-registro-datas",
      "text" : "Mantém registro das datas de aplicação",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-registro-produtos",
      "text" : "Mantém registro dos produtos utilizados em cada aplicação",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-intervalo-reentrada",
      "text" : "Respeita o intervalo de reentrada na lavoura",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-condicoes-climaticas",
      "text" : "Observa as condições climáticas antes de pulverizar",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-manutencao-pulverizador",
      "text" : "Realiza manutenção periódica do pulverizador",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    },
    {
      "linkId" : "boa-pratica-acompanhamento-aps",
      "text" : "Recebe acompanhamento periódico pela equipe de APS/ESF",
      "type" : "choice",
      "required" : true,
      "answerValueSet" : "https://jefersonrl.github.io/AgroSUS-FHIR/ValueSet/agrosus-avaliacao-boas-praticas"
    }]
  },
  {
    "linkId" : "vigilancia-sinais-alerta",
    "text" : "16. Vigilância de sinais de alerta",
    "type" : "group",
    "item" : [{
      "linkId" : "vigilancia-nota-metodologica",
      "text" : "Os itens abaixo são gatilhos independentes de atenção clínica, com base em NR-7, NR-31 e na Nota Informativa nº 16/2019-CGLAB/MS. Não representam um escore ou pontuação combinada — qualquer gatilho presente deve motivar avaliação prioritária pela equipe da UBS.",
      "type" : "display"
    },
    {
      "linkId" : "vigilancia-sintoma-agudo-observado",
      "text" : "O trabalhador apresenta, no momento da visita, algum sinal ou sintoma agudo compatível com intoxicação por defensivos (ver Seção 13)?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "vigilancia-produto-categoria-1-2-sem-epi",
      "text" : "O trabalhador manuseia defensivo de categoria toxicológica 1 ou 2 sem uso adequado de EPI (ver Seções 6 e 9)?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "vigilancia-historico-intoxicacao-previa",
      "text" : "Há histórico de intoxicação aguda prévia autorreferido (ver Seção 14)?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "vigilancia-colinesterase-alterada-precaucao",
      "text" : "Há resultado de colinesterase alterado ou em faixa de precaução no acompanhamento laboratorial mais recente, quando disponível (ver Library AgroSUSIntoxicacaoLogic)?",
      "type" : "boolean"
    },
    {
      "linkId" : "vigilancia-encaminhamento-recomendado",
      "text" : "Diante dos gatilhos acima, o ACS recomenda encaminhamento prioritário para avaliação na UBS?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "vigilancia-observacoes",
      "text" : "Observações adicionais sobre os gatilhos identificados",
      "type" : "text"
    }]
  },
  {
    "linkId" : "observacoes-acs",
    "text" : "17. Observações do Agente Comunitário de Saúde",
    "type" : "group",
    "item" : [{
      "linkId" : "observacoes-adicionais-acs",
      "text" : "Registre condições do domicílio, contexto ambiental observado em campo, comportamento durante a entrevista, dificuldades na aplicação do instrumento ou outras informações relevantes para o acompanhamento.",
      "type" : "text"
    }]
  },
  {
    "linkId" : "encerramento-assistencial",
    "text" : "18. Encerramento",
    "type" : "group",
    "item" : [{
      "linkId" : "orientacao-encerramento",
      "text" : "Antes de concluir, confira as respostas registradas com o trabalhador ou responsável.",
      "type" : "display"
    },
    {
      "linkId" : "respostas-conferidas-participante",
      "text" : "As informações registradas foram conferidas com o trabalhador ou responsável?",
      "type" : "boolean",
      "required" : true
    }]
  }]
}

```
