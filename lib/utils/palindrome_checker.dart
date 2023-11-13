class PalindromeChecker {
  bool isPalindrome(String frase) {
    var fraseLimpa = frase.toLowerCase().replaceAll(' ', '');
    var fraseContrario = fraseLimpa.split('').reversed.join();
    return fraseLimpa == fraseContrario;
  }
}
