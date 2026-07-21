# Terminologia de equipamentos de proteção individual AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Terminologia de equipamentos de proteção individual AgroSUS**

## CodeSystem: Terminologia de equipamentos de proteção individual AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-epi | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSEPICS |

 
Terminologia para frequência de uso, armazenamento e motivos de não utilização dos equipamentos de proteção individual. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSArmazenamentoEPIVS](ValueSet-agrosus-armazenamento-epi.md)
* [AgroSUSFrequenciaUsoEPIVS](ValueSet-agrosus-frequencia-uso-epi.md)
* [AgroSUSMotivoNaoUsoEPIVS](ValueSet-agrosus-motivo-nao-uso-epi.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-epi",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-epi",
  "version" : "0.1.0",
  "name" : "AgroSUSEPICS",
  "title" : "Terminologia de equipamentos de proteção individual AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T13:03:45+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia para frequência de uso, armazenamento e motivos de não utilização dos equipamentos de proteção individual.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "uso-sempre",
    "display" : "Sempre",
    "definition" : "O equipamento de proteção individual é utilizado sempre."
  },
  {
    "code" : "uso-as-vezes",
    "display" : "Às vezes",
    "definition" : "O equipamento de proteção individual é utilizado ocasionalmente."
  },
  {
    "code" : "uso-nunca",
    "display" : "Nunca",
    "definition" : "O trabalhador possui o equipamento, mas nunca o utiliza."
  },
  {
    "code" : "nao-possui",
    "display" : "Não possui",
    "definition" : "O trabalhador não possui o equipamento de proteção individual."
  },
  {
    "code" : "armazenamento-local-especific-separado",
    "display" : "Local específico e separado",
    "definition" : "Os equipamentos são armazenados em local específico e separado."
  },
  {
    "code" : "armazenamento-junto-roupas-pessoais",
    "display" : "Junto de roupas pessoais",
    "definition" : "Os equipamentos são armazenados junto de roupas pessoais."
  },
  {
    "code" : "armazenamento-deposito-defensivos",
    "display" : "Depósito de defensivos",
    "definition" : "Os equipamentos são armazenados no depósito de defensivos agrícolas."
  },
  {
    "code" : "motivo-desconforto",
    "display" : "Desconforto",
    "definition" : "O equipamento não é utilizado devido ao desconforto."
  },
  {
    "code" : "motivo-descuido",
    "display" : "Descuido",
    "definition" : "O equipamento não é utilizado por descuido."
  },
  {
    "code" : "motivo-considera-desnecessario",
    "display" : "Considera desnecessário",
    "definition" : "O trabalhador considera desnecessária a utilização do equipamento."
  },
  {
    "code" : "motivo-custo-elevado",
    "display" : "Custo elevado",
    "definition" : "O equipamento não é utilizado devido ao custo elevado."
  },
  {
    "code" : "outro",
    "display" : "Outro",
    "definition" : "Outra forma de armazenamento ou outro motivo não especificado."
  }]
}

```
