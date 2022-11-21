# unico-webframe-poc-react
POC de implementação do SDK web unico no iOS usando deeplink para interação.

## Dependências
- XCode >= 13
- nodejs `brew install node`

## Como testar

## 1- Adicione os arquivos de configuração js

os arquivos devem ser adicionados em: `web/public/`

```
web/public/services-sem-facetec.json
web/public/services.json
```

### 2- Rode o servidor web
```
cd web
npm install
npm start
```

### 3- Altere a url do servidor
No nativo, na class `ViewController.swift` altere a `urlString` para o seu ip local, ex:
`private let urlString = "https://192.168.0.123:3000/"`