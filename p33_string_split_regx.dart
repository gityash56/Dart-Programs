void main() {
  String text = "On7e, two; three: four. five! six? seven";

  RegExp regex = RegExp(r'[,\s;:.!?0-9]+');

  List<String> words = text.split(regex);

  for (var word in words) {
    print(word);
  }
}
