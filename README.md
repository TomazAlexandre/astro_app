# astro_app

Aplicativo Flutter para exibir informações astrológicas.

## Visão geral

`astro_app` é um projeto Flutter que fornece páginas para horóscopo, lua, compatibilidade e perfil do usuário.

## Requisitos

- Flutter >= 3.0
- Dart SDK compatível com a versão do Flutter
- Android Studio / Xcode para builds nativos

## Instalação

1. Clone o repositório:

```bash
git clone git@github.com:TomazAlexandre/astro_app.git
cd astro_app
```

2. Instale dependências:

```bash
flutter pub get
```

## Executando

- Emulador Android:

```bash
flutter run -d emulator-5554
```

- Dispositivo iOS (macOS com Xcode):

```bash
flutter run -d <device-id>
```

## Build

- Android release:

```bash
flutter build apk --release
```

- iOS release:

```bash
flutter build ios --release
```

## Testes

```bash
flutter test
```

## Contribuindo

- Abra uma issue para discutir mudanças grandes.
- Envie pull requests pequenas e focadas.

## Release e branch protection

- Uma tag `v0.1.0` já foi criada e empurrada para o remoto.
- Para criar um GitHub Release ou configurar proteção da branch `main`, forneça um Personal Access Token (PAT) com escopo `repo`, ou instale e autentique a CLI `gh`.

Exemplo (local):

```bash
# Criar release via gh (se instalado e autenticado)
gh release create v0.1.0 -t "v0.1.0" -n "Initial release"

# Proteger branch via gh (exemplo básico)
gh api --method PUT \
  -H "Accept: application/vnd.github+json" \
  /repos/TomazAlexandre/astro_app/branches/main/protection \
  -f required_status_checks='{"strict":true,"contexts":[]}' \
  -f enforce_admins=true \
  -f required_pull_request_reviews='{"required_approving_review_count":1}'
```

## Licença

MIT
