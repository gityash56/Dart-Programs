import 'dart:io';

void main() {
  stdout.write(
      'Enter a string with character,digit,white space, and special character : ');
  String input = stdin.readLineSync()!;

  int charCount = 0;
  int digitCount = 0;
  int spaceCount = 0;
  int specialCharCount = 0;

  for (int i = 0; i < input.length; i++) {
    if (input[i].toUpperCase() != input[i].toLowerCase()) {
      charCount++;
    } else if (input[i].toUpperCase().codeUnitAt(0) >= 48 &&
        input[i].toUpperCase().codeUnitAt(0) <= 57) {
      digitCount++;
    } else if (input[i] == ' ') {
      spaceCount++;
    } else {
      specialCharCount++;
    }
  }
  print('\nCharacter Count : $charCount');
  print('Digit Count : $digitCount');
  print('Whiterspace Count : $spaceCount');
  print('Special Character Count : $specialCharCount');
}
