import 'dart:io';

void main() {
  print('Enter a number:');
  int? number = int.parse(stdin.readLineSync()!);

  List<int> divisors = findDivisors(number);

  print('Divisors of $number are: ${divisors.join(', ')}');
}

List<int> findDivisors(int number) {
  List<int> divisors = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }

  return divisors;
}
