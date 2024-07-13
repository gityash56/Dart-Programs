import 'dart:io';

void main() {
  while (true) {
    try {
      stdout.write('Enter a number to check Even or Odd (or "q" to quit): ');
      String input = stdin.readLineSync()!;

      if (input.toLowerCase() == 'q') {
        break; // Exit the loop if user enter "q"
      }

      int num = int.parse(input);
      String result = num.isEven ? 'Even' : 'Odd';
      print('\nNumber is $result.');
    } on FormatException catch (_) {
      print('Invalid input: Please enter a valid number or "q" to quit.');
    } catch (e) {
      print('An unexpected error occurred: $e'); // Catch other exceptions
    }
  }
}
