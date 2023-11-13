// Arquivo: app/palindrome_app.dart
import '../service/io_service.dart';
import '../utils/command_processor.dart';
import '../utils/palindrome_checker.dart';

class PalindromeApp {
  final IOService _ioService;
  final PalindromeChecker _checker;
  late final CommandProcessor _commandProcessor;

  PalindromeApp(this._ioService, this._checker) {
    _commandProcessor = CommandProcessor(_ioService, _checker);
  }

  void run() {
    while (true) {
      _ioService.printMessage("------ Palíndromo ------");
      _ioService.printMessage(
          "> Informe sua frase ou digite 'sair' para encerrar:\n");

      String? frase = _ioService.readLine();
      _commandProcessor.processCommand(frase);

      if (frase != null && frase.toLowerCase() == 'sair') {
        break;
      }
    }
  }
}
