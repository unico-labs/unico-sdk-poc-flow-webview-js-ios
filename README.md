# unico-sdk-poc-flow-webview-js-ios
POC de implementação do SDK web unico no iOS usando deeplink para interação.

## Sample Video
[sample.MOV](https://github.com/unico-labs/unico-sdk-poc-flow-webview-js-ios/blob/main/sample.MOV)

## Dependências
- XCode >= 13
- nodejs `brew install node`

## Como testar

## 1- Adicione os arquivos de configuração js

os arquivos devem ser adicionados em: `web/public/`

```
web/public/services-sem-facetec.json
web/public/services.json
web/public/services-camera-traseira.json
```

### 2- Rode o servidor web
```
cd web
yarn install
yarn start
```

### 3- Altere a url do servidor
No nativo, na class `ViewController.swift` altere a `urlString` para o seu ip local, ex:
`private let urlString = "https://192.168.0.123:3000/"`
