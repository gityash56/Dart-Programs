import 'dart:io';

void main() {
  // Function to get user input
  double getNumberInput(String a) {
    print(a);
    return double.parse(stdin.readLineSync()!);
  }

  double num1 = getNumberInput('Enter the first number:');
  double num2 = getNumberInput('Enter the second number:');
  double num3 = getNumberInput('Enter the third number:');

  double largest;

  if (num1 >= num2 && num1 >= num3) {
    largest = num1;
  } else if (num2 >= num1 && num2 >= num3) {
    largest = num2;
  } else {
    largest = num3;
  }

  print('The largest number is: $largest');
}
