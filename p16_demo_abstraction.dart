import 'dart:io';

abstract class ArithmeticOperation {
  double performOperation(double num1, double num2);
}

class Addition extends ArithmeticOperation {
  @override
  double performOperation(double num1, double num2) {
    return num1 + num2;
  }
}

class Subtraction extends ArithmeticOperation {
  @override
  double performOperation(double num1, double num2) {
    return num1 - num2;
  }
}

class Multiplication extends ArithmeticOperation {
  @override
  double performOperation(double num1, double num2) {
    return num1 * num2;
  }
}

class Division extends ArithmeticOperation {
  @override
  double performOperation(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      throw ArgumentError("Cannot divide by zero.");
    }
  }
}

void main() {
  print("Enter two numbers:");
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  ArithmeticOperation arithmeticOperation;
  switch (operation) {
    case '+':
      arithmeticOperation = Addition();
      break;
    case '-':
      arithmeticOperation = Subtraction();
      break;
    case '*':
      arithmeticOperation = Multiplication();
      break;
    case '/':
      arithmeticOperation = Division();
      break;
    default:
      print("Invalid operation");
      return;
  }

  try {
    double result = arithmeticOperation.performOperation(num1, num2);
    print("Result: $result");
  } catch (e) {
    print(e.toString());
  }
}
