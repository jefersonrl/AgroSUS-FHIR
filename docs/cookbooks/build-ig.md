# Cookbook — Build do AgroSUS-FHIR

## Pré-requisitos

- Node.js (para `fsh-sushi`) e Java 11+ (para o IG Publisher).
- Acesso de rede a `packages.fhir.org` / `packages2.fhir.org` (necessário para resolver
  `hl7.terminology`, `hl7.fhir.uv.*`, `br.gov.saude.*` e `hl7.fhir.r4.core` — ver
  `docs/hard-earned-lessons.md` sobre ambientes sem essa rede liberada).

## 1. Validar sintaxe do `sushi-config.yaml` (rápido, sem rede)

```bash
python3 -c "import yaml; yaml.safe_load(open('sushi-config.yaml')); print('OK')"
```

## 2. Compilar FSH → recursos FHIR JSON

```bash
npx fsh-sushi .          # ou: sushi .  (se instalado globalmente)
```

Critério de aceite: `0 errors`. Avisos (`warn`) sobre pacotes opcionais (ex.
`hl7.fhir.uv.tools.r4`) não bloqueiam o build.

## 3. Gerar o site do IG (requer Java 11+ e rede)

```bash
./_updatePublisher.sh   # baixa o IG Publisher na 1ª vez
./_genonce.sh           # gera o site em output/index.html
```

## 4. Antes de commitar

- Rodar o passo 1 sempre que `sushi-config.yaml` for editado manualmente (o bug de YAML de
  21/07/2026 só teria sido pego assim antes do commit).
- Conferir se todo artefato novo de decisão-suporte cita sua fonte L1 (`// Fonte L1: ...`).
- Atualizar `docs/hard-earned-lessons.md` se um novo tipo de erro de build for encontrado.
