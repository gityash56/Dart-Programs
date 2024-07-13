void main() {
  String S1 = "hello java";

  List<String> words = S1.split(' ');

  // Capitalize the first letter of each word
  List<String> capitalizedWords = words.map((word) {
    if (word.isNotEmpty) {
      return word[0].toUpperCase() + word.substring(1);
    }
    return word;
  }).toList();

  for (String word in capitalizedWords) {
    print(word);
  }
}
