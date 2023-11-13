import 'package:palindromo/app/palindrome_app.dart';
import 'package:palindromo/service/io_service.dart';
import 'package:palindromo/utils/palindrome_checker.dart';

void main() {
  var ioService = IOService();
  var checker = PalindromeChecker();
  var app = PalindromeApp(ioService, checker);

  app.run();
}
