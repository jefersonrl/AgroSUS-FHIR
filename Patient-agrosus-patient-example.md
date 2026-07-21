# Exemplo de Paciente AgroSUS - Projeto mareIA: módulo AgroSUS para telemonitoramento e apoio à identificação precoce de intoxicações por uso de defensivos agrícolas v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exemplo de Paciente AgroSUS**

## Example Patient: Exemplo de Paciente AgroSUS

Língua: pt-BR

Perfil: [Paciente AgroSUS](StructureDefinition-agrosus-patient.md)

Maria Aparecida de Souza(official) Female, DoB: 1978-05-14 ( Health Card Number: NamingSystemCNS#987654321098765 (use: official, ))

-------

| | |
| :--- | :--- |
| Ativo: | true |
| Other Id: | Tax ID number/12345678901 (utilização: official, ) |
| Detalhes do contacto | * [+55 11 90000-0000](tel:+551190000-0000)
* Propriedade Rural Exemplo, Jundiapeba, Mogi das Cruzes, SP(home)
 |
| [Raça BR IPS](https://ips.saude.gov.br/fhir/StructureDefinition-raca-br-ips.html) | Branca |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "agrosus-patient-example",
  "meta" : {
    "profile" : ["https://jefersonrl.github.io/AgroSUS-FHIR/StructureDefinition/agrosus-patient"]
  },
  "language" : "pt-BR",
  "extension" : [{
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRRacaCor",
        "code" : "01",
        "display" : "Branca"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX",
        "display" : "Tax ID number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "12345678901"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC",
        "display" : "Health Card Number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "987654321098765"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Maria Aparecida de Souza",
    "family" : "Souza",
    "given" : ["Maria", "Aparecida"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55 11 90000-0000",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1978-05-14",
  "address" : [{
    "use" : "home",
    "type" : "physical",
    "text" : "Propriedade Rural Exemplo, Jundiapeba, Mogi das Cruzes, SP",
    "line" : ["Propriedade Rural Exemplo, s/n"],
    "city" : "Mogi das Cruzes",
    "district" : "Jundiapeba",
    "state" : "SP",
    "country" : "Brasil"
  }]
}

```
