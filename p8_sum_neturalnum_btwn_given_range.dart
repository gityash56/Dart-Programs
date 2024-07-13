import 'dart:io';

void main() {
  int n, sum = 0;

  do {
    stdout.write("Enter Positive (Natural) Number: ");
    n = int.parse(stdin.readLineSync()!);
  } while (n <= 0);

  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  // print("Sum = $sum");
  print("\nSum Of $n Between Range Is : $sum ");
}
