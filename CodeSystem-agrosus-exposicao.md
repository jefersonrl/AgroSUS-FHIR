# Terminologia de exposição ocupacional AgroSUS - Módulo AgroSUS — Projeto mareIA v0.1.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Terminologia de exposição ocupacional AgroSUS**

## CodeSystem: Terminologia de exposição ocupacional AgroSUS 

| | |
| :--- | :--- |
| *Official URL*:https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao | *Version*:0.1.0 |
| Active as of 2026-07-21 | *Computable Name*:AgroSUSExposicaoCS |

 
Terminologia das características de frequência e forma de exposição aos defensivos agrícolas. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AgroSUSDiasAplicacaoMesVS](ValueSet-agrosus-dias-aplicacao-mes.md)
* [AgroSUSEquipamentoAplicacaoVS](ValueSet-agrosus-equipamento-aplicacao.md)
* [AgroSUSHorasAplicacaoDiaVS](ValueSet-agrosus-horas-aplicacao-dia.md)
* [AgroSUSMesMaiorIntensidadeVS](ValueSet-agrosus-mes-maior-intensidade.md)
* [AgroSUSResponsavelAplicacaoVS](ValueSet-agrosus-responsavel-aplicacao.md)
* [AgroSUSViaExposicaoVS](ValueSet-agrosus-via-exposicao.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "agrosus-exposicao",
  "url" : "https://jefersonrl.github.io/AgroSUS-FHIR/CodeSystem/agrosus-exposicao",
  "version" : "0.1.0",
  "name" : "AgroSUSExposicaoCS",
  "title" : "Terminologia de exposição ocupacional AgroSUS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-21T03:34:20+00:00",
  "publisher" : "Fatec Ferraz de Vasconcelos",
  "contact" : [{
    "name" : "Fatec Ferraz de Vasconcelos",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fatecferraz.edu.br"
    }]
  }],
  "description" : "Terminologia das características de frequência e forma de exposição aos defensivos agrícolas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 33,
  "concept" : [{
    "code" : "dias-mes-1-2",
    "display" : "1–2 dias por mês"
  },
  {
    "code" : "dias-mes-3-5",
    "display" : "3–5 dias por mês"
  },
  {
    "code" : "dias-mes-6-10",
    "display" : "6–10 dias por mês"
  },
  {
    "code" : "dias-mes-mais-10",
    "display" : "Mais de 10 dias por mês"
  },
  {
    "code" : "horas-dia-menos-2",
    "display" : "Menos de 2 horas por dia"
  },
  {
    "code" : "horas-dia-2-4",
    "display" : "2–4 horas por dia"
  },
  {
    "code" : "horas-dia-4-6",
    "display" : "4–6 horas por dia"
  },
  {
    "code" : "horas-dia-mais-6",
    "display" : "Mais de 6 horas por dia"
  },
  {
    "code" : "janeiro",
    "display" : "Janeiro"
  },
  {
    "code" : "fevereiro",
    "display" : "Fevereiro"
  },
  {
    "code" : "marco",
    "display" : "Março"
  },
  {
    "code" : "abril",
    "display" : "Abril"
  },
  {
    "code" : "maio",
    "display" : "Maio"
  },
  {
    "code" : "junho",
    "display" : "Junho"
  },
  {
    "code" : "julho",
    "display" : "Julho"
  },
  {
    "code" : "agosto",
    "display" : "Agosto"
  },
  {
    "code" : "setembro",
    "display" : "Setembro"
  },
  {
    "code" : "outubro",
    "display" : "Outubro"
  },
  {
    "code" : "novembro",
    "display" : "Novembro"
  },
  {
    "code" : "dezembro",
    "display" : "Dezembro"
  },
  {
    "code" : "pulverizador-costal-manual",
    "display" : "Pulverizador costal manual"
  },
  {
    "code" : "pulverizador-costal-motorizado",
    "display" : "Pulverizador costal motorizado"
  },
  {
    "code" : "trator-com-barra",
    "display" : "Trator com barra"
  },
  {
    "code" : "cutanea",
    "display" : "Cutânea (pele)"
  },
  {
    "code" : "respiratoria",
    "display" : "Respiratória (inalação)"
  },
  {
    "code" : "ocular",
    "display" : "Ocular"
  },
  {
    "code" : "digestiva-oral",
    "display" : "Digestiva ou oral"
  },
  {
    "code" : "multiplas-vias",
    "display" : "Múltiplas vias"
  },
  {
    "code" : "proprio-produtor",
    "display" : "O próprio produtor"
  },
  {
    "code" : "familiar",
    "display" : "Familiar"
  },
  {
    "code" : "trabalhador-contratado",
    "display" : "Trabalhador contratado"
  },
  {
    "code" : "empresa-terceirizada",
    "display" : "Empresa terceirizada"
  },
  {
    "code" : "outro",
    "display" : "Outro"
  }]
}

```
