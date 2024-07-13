import 'dart:io';

void main() {
  while (true) {
    stdout.write('Enter an expression (e.g., 2 + 3) or "exit" to quit: ');
    String input = stdin.readLineSync()!.trim();

    if (input.toLowerCase() == 'exit') {
      break;
    }

    List<String> parts = input.split(' ');
    if (parts.length != 3) {
      print('Invalid input. Please enter an expression like "2 + 3".');
      continue;
    }

    try {
      double num1 = double.parse(parts[0]);
      String operator = parts[1];
      double num2 = double.parse(parts[2]);
      double result = 0;

      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          if (num2 == 0) {
            print('Division by zero is not allowed.');
            continue;
          }
          result = num1 / num2;
          break;
        default:
          print('Invalid operator. Please use one of: +, -, *, /');
          continue;
      }

      print('Result: $result');
    } catch (e) {
      print('Invalid input. Please enter numbers and a valid operator.');
    }
  }

  print('Calculator closed.');
}
