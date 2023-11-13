// Arquivo: utils/command_processor.dart
import '../service/io_service.dart';
import 'palindrome_checker.dart';

class CommandProcessor {
  final IOService _ioService;
  final PalindromeChecker _checker;

  CommandProcessor(this._ioService, this._checker);

  void processCommand(String? input) {
    if (input != null && input.toLowerCase() == 'sair') {
      _ioService.printMessage("Programa encerrado.");
      return; // Retorna para indicar que o programa deve ser encerrado
    }

    if (input != null &&
        (int.tryParse(input) != null || double.tryParse(input) != null)) {
      _ioService.printMessage("Informe uma frase válida, não um número!");
      return; // Retorna para continuar o loop
    }

    if (input != null && input.isNotEmpty) {
      bool resultado = _checker.isPalindrome(input);
      _ioService.printMessage("\nSua Frase em UpperCase:");
      _ioService.printMessage(input.toUpperCase());

      var fraseContrario = input.split('').reversed.join();
      _ioService.printMessage("\nSua Frase ao contrário:");
      _ioService.printMessage("$input -> $fraseContrario \n");

      if (resultado) {
        _ioService.printMessage("Resultado:");
        _ioService.printMessage('É um palíndromo!!');
      } else {
        _ioService.printMessage("Resultado:");
        _ioService.printMessage('Não é um palíndromo!!');
        _ioService.printMessage("Tente de novo !");
      }
    } else {
      _ioService.printMessage("Informe uma frase válida!");
    }
  }
}
