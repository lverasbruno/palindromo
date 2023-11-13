import 'dart:io';

class IOService {
  void printMessage(String message) {
    print(message);
  }

  String? readLine() {
    return stdin.readLineSync();
  }
}
