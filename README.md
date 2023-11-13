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
└── test/                         # Testes unitários e de integração
    └── palindromo_test.dart      # Arquivos de teste


Aplicativo de linha de comando.

Aceita entradas:
SAIR - para deixar o app
Palavras - para checar se são palindromo

Não aceita:
entradas em int ou double

Executar:
dart run main.dart


