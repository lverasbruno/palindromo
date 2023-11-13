
# Aplicativo Verificador de Palíndromos

Este é um aplicativo de linha de comando para verificar se uma palavra ou frase é um palíndromo.

## Estrutura do Projeto

```
palindrome_checker/
│
├── bin/
│   └── main.dart          # Ponto de entrada do aplicativo de linha de comando
│
├── lib/
│   ├── services/          # Serviços como IOService
│   │   └── io_service.dart
│   │
│   ├── utils/             # Utilitários, como a lógica de negócios (PalindromeChecker)
│   │   └── palindrome_checker.dart
│   │
│   └── app/               # Classe principal do aplicativo
│       └── palindrome_app.dart
│
└── test/                  # Testes unitários e de integração
    └── palindromo_test.dart
```

## Funcionalidades

- **Aceita Entradas**:
  - `SAIR`: Encerra a aplicação.
  - `Palavras`: Verifica se as palavras inseridas são palíndromos.

- **Não Aceita Entradas**:
  - Números (inteiros ou decimais).

## Como Executar

Para executar o aplicativo, use o comando:

```bash
dart run main.dart
```

Siga as instruções na tela para verificar palíndromos ou sair do aplicativo.
