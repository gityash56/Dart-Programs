import 'dart:io';

void main() {
  String pattern = r'^[\sa-zA-Z0-9_]+$';
  RegExp regExp = RegExp(pattern);

  print('Enter a string to check if it matches the pattern:');
  String? input = stdin.readLineSync();

  if (input != null) {
    if (regExp.hasMatch(input)) {
      print('The string matches the pattern.');
    } else {
      print('The string does not match the pattern.');
    }
  }
}
