import 'package:palindromo/utils/palindrome_checker.dart';
import 'package:test/test.dart';

void main() {
  group('PalindromeChecker', () {
    final palindromeChecker = PalindromeChecker();

    test('Verifica se "arara" é um palíndromo', () {
      expect(palindromeChecker.isPalindrome("arara"), isTrue);
    });

    test('Verifica se "radar" é um palíndromo', () {
      expect(palindromeChecker.isPalindrome("radar"), isTrue);
    });

    test('Verifica se "teste" não é um palíndromo', () {
      expect(palindromeChecker.isPalindrome("teste"), isFalse);
    });

    test('Verifica se uma string vazia é tratada como palíndromo', () {
      expect(palindromeChecker.isPalindrome(""), isTrue);
    });

    test(
        'Verifica se "A Santa at NASA" é um palíndromo, considerando espaços e maiúsculas',
        () {
      expect(palindromeChecker.isPalindrome("A Santa at NASA"), isTrue);
    });
  });
}
