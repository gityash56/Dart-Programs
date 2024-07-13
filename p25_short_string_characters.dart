void main() {
  String input = "flutterusedart";
  String sortedString = sortStringCharacters(input);
  print('Short string character: $sortedString');
}

String sortStringCharacters(String str) {
  // Convert the string to a list of characters
  List<String> charList = str.split('');

  charList.sort();

  return charList.join(' ');
}
