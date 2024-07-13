import 'dart:io';

void main() {
  stdout.write('Enter the first integer: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second integer: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int quotient = num1 ~/ num2; // integer division
  int remainder = num1 % num2; // modulo

  print('Quotient: $quotient');
  print('Remainder: $remainder');
}
