void main() {
  int original_num = 12321;
  int rev = 0;
  int num = original_num;

  while (num != 0) {
    int r = num % 10;
    rev = rev * 10 + r;
    num = num ~/ 10;
  }

  if (original_num == rev) {
    print('$original_num is a Palindrome.');
  } else {
    print('$original_num is Not a Palindrome.');
  }
}
