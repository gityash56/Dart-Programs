import 'dart:io';

void main() {
  stdout.write('Enter Floating Number :');
  double? n1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second Floating Number :');
  double? n2 = double.parse(stdin.readLineSync()!);

  if (n1 != null && n2 != null) {
    double result = n1 * n2;
    print('The result of multiplying $n1 and $n2 is $result');
  } else {
    print('Invalid input. Plz enter valid floating numbers');
  }
}
