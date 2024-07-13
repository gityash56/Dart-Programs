import 'dart:io';

void main() {
  int n, num1 = 0, num2 = 1;

  print('Enter Number:');
  n = int.parse(stdin.readLineSync()!);

  stdout.write('Fibonacci series is: $num1, $num2');
  for (int i = 3; i <= n; i++) {
    int nextnum = num1 + num2;
    stdout.write(', $nextnum');
    num1 = num2;
    num2 = nextnum;
  }
  stdout.write('\n');
}
