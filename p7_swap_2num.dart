import 'dart:io';

void main() {
  print('Enter two Number :');

  String input = stdin.readLineSync()!;
  List<String> parts = input.split(' ');

  if (parts.length != 2) {
    print('plz Enter Two Number');
    return;
  }
  int num1 = int.parse(parts[0]);
  int num2 = int.parse(parts[1]);

  print('Before swap Number1 is: $num1 and Number2 is: $num2\n');

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print('After swap Number1 is: $num1 and Number2 is: $num2');
}
