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

## 2026-07-21 — Site publicado não é responsivo: `.markdown-toc` sem breakpoint mobile

**Sintoma:** no celular, a caixa "nesta página" (gerada automaticamente a partir dos títulos `###`
de cada página) aperta/sobrepõe o conteúdo, e algumas tabelas ficam cortadas na lateral.

**Causa (confirmada inspecionando o HTML/CSS publicado via DevTools, não por suposição):** a regra
`div.markdown-toc, ul.markdown-toc { float: right; width: 30%; }`, definida em
`assets/css/bootstrap-fhir.css` do template base (`who.template.root`), não tem nenhum
`@media (max-width: ...)` que a recolha em telas estreitas. O único bloco `@media (max-width:
400px)` existente no CSS do template está vazio (não faz nada). Tabelas em geral também não têm
`overflow-x: auto` por padrão.

**Correção:** criada uma extensão de template local (`templates/agrosus-template/`, mecanismo
oficial documentado em
[build.fhir.org/ig/FHIR/ig-guidance/template.html](https://build.fhir.org/ig/FHIR/ig-guidance/template.html))
que **estende** `who.template.root` (não substitui) e apenas acrescenta um CSS
(`assets/css/agrosus-responsive.css`) com `@media (max-width: 767px)` para: (1) forçar
`.markdown-toc` a `float: none; width: auto`; (2) dar `overflow-x: auto` a todas as tabelas; (3)
limitar imagens/SVGs a `max-width: 100%`. `ig.ini` foi apontado para
`template = templates/agrosus-template` (comentário no próprio arquivo explica como reverter para
`who.template.root#current` caso necessário).

**Limite desta correção:** não foi possível rodar o IG Publisher completo neste ambiente (mesma
limitação de rede do item acima) para confirmar que a extensão de template compila sem erros — a
sintaxe segue exatamente a documentação oficial e o diagnóstico foi feito inspecionando o HTML/CSS
real do site já publicado (não é uma suposição às cegas), mas o primeiro build após essa mudança
deve ser observado no GitHub Actions.

## 2026-07-21 — Regressão da correção acima: bandeira do cabeçalho virou um bloco enorme cobrindo o menu

**Sintoma:** depois do fix acima, a bandeira de jurisdição no cabeçalho (`assets/images/bra.svg`,
gerada automaticamente a partir de `jurisdiction: BR` no `sushi-config.yaml`) passou a ocupar quase
toda a largura da tela no celular, cobrindo o menu — reportado pelo usuário e confirmado
inspecionando `l2-user-scenarios.html` em modo responsivo (400px) via DevTools.

**Causa:** a própria regra `img, svg { max-width: 100%; height: auto; }` adicionada no item
anterior. Essa bandeira só tem `height="16"` no HTML (sem `width`, ícone pequeno ao lado do texto
"0.1.0 - ci-build"); `height: auto` sobrescreve esse atributo, e sem nenhuma largura definida o
navegador expande a imagem para caber 100% do container — de ~16px para centenas de pixels.
**Não era o diagrama de caso de uso** (`agrosus-use-case.svg`), que já define seu próprio
`max-width/height` inline e ficava bem mais abaixo na página, fora da área do menu.

**Correção:** remover `height: auto` da regra genérica em
`templates/agrosus-template/package/content/assets/css/agrosus-responsive.css`, mantendo apenas
`max-width: 100%` — suficiente para impedir estouro horizontal de imagens grandes, sem afetar
ícones pequenos com `height` fixo no HTML.

**Como evitar de novo:** regras CSS genéricas por *tag* (`img`, `svg`, etc.) num template
compartilhado por toda a IG podem afetar elementos gerados automaticamente pelo publisher (bandeira
de jurisdição, ícones do template) que não são visíveis ao editar apenas o conteúdo/pagecontent.
Ao adicionar uma regra desse tipo, inspecionar o HTML/CSS real do site (DevTools, não só o código
fonte) antes de assumir que ela afeta somente o conteúdo pretendido.
