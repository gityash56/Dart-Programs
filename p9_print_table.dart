import 'dart:io';

void main() {
  int n;

  stdout.write('Enter Any Number You Want Table: ');
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print('\n$n * $i = ${n * i}');
  }
}
