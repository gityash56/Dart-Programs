// // Write a program to reverse a number.

// void main() {

//   var number = [1, 2, 5, 4, 3, 6, 7, 8, 9, 0];

//   final rev = number.reversed;

//   var reverse = new  (rev);

//   print(reverse.toList());
// }

import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int reversedNumber = reverseNumber(number);
  print("Reversed Number: $reversedNumber");
}

int reverseNumber(int number) {
  int reversed = 0;

  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  return reversed;
}
