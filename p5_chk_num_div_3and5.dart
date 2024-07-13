import 'dart:io';

void main() {
  print('Enter Number : ');

  int? number = int.parse(stdin.readLineSync()!);

  if (number % 3 == 0 && number % 5 == 0) {
    print('$number is divisible by both 3 and 5');
  } else if (number % 3 == 0) {
    print('$number is divisible by 3');
  } else if (number % 5 == 0) {
    print('$number is divisible by 5');
  } else {
    print('$number is not divisible by 3 or 5');
  }
}
