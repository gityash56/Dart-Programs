import 'dart:io';

void main() {
  print('Enter numbers separated by single spaces:');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('No input provided.');
    return;
  }

  List<String> inputList = input.split(' ');
  List<num> numbers = [];

  try {
    for (var item in inputList) {
      numbers.add(num.parse(item));
    }
  } catch (e) {
    print('Invalid input. Please enter valid numbers.');
    return;
  }

  if (numbers.isEmpty) {
    print('No valid numbers provided.');
  } else {
    num largest = numbers[0];
    for (var number in numbers) {
      if (number > largest) {
        largest = number;
      }
    }
    print('The largest number is: $largest');
  }
}
