void main() {
  String input = 'welcometojava';
  int length = 3;

  List<String> substrings = [];

  for (int i = 0; i <= input.length - length; i++) {
    substrings.add(input.substring(i, i + length));
  }

  print("Input: $input");
  print("Length: $length");
  print("Substrings: $substrings");

  substrings.sort();

  String smallest = substrings.first;
  String largest = substrings.last;

  print("Smallest substring: $smallest");
  print("Largest substring: $largest");
}
