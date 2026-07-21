# Hard-Earned Lessons — AgroSUS-FHIR

Armadilhas reais encontradas neste repositório e como evitá-las. Atualizar a cada build quebrado.

## 2026-07-21 — `title` com dois-pontos quebra o `sushi-config.yaml`

**Sintoma:** `sushi .` falhava imediatamente com
`Error parsing configuration: Nested mappings are not allowed in compact mappings`, antes de
processar qualquer FSH.

**Causa:** o campo `title` foi editado para
`title: Projeto mareIA: módulo AgroSUS para telemonitoramento...` — o valor contém `:` sem estar
entre aspas. YAML interpreta o primeiro `:` de uma linha como separador chave-valor; um segundo
`:` no valor, sem aspas, quebra o parser.

**Correção:** qualquer valor de string em `sushi-config.yaml` que contenha `:`, `#` seguido de
espaço, ou comece com caractere especial deve ser colocado entre aspas duplas:
`title: "Projeto mareIA: módulo AgroSUS..."`.

**Como evitar de novo:** antes de editar `sushi-config.yaml` manualmente, validar com
`python3 -c "import yaml; yaml.safe_load(open('sushi-config.yaml'))"` (ou equivalente) antes de
rodar o SUSHI completo — é mais rápido para localizar erros de sintaxe puros.

## 2026-07-21 — Ambiente sem acesso a `packages.fhir.org`

**Sintoma:** SUSHI importa o FSH corretamente (67 definições, 29 instâncias) mas falha ao resolver
dependências (`hl7.terminology`, `br.gov.saude.*`, `hl7.fhir.r4.core` etc.) com
`Failed to download ... from the registry`.

**Causa:** ambiente de execução sem rede liberada para os registries FHIR. Não é um bug do
projeto.

**Como evitar retrabalho:** validar sintaxe FSH/YAML localmente (import bem-sucedido já é um bom
sinal), mas a validação completa (perfis resolvidos, terminologia externa, IG publicado) só é
confiável no ambiente do usuário ou no CI do GitHub Actions, que tem acesso à rede.
