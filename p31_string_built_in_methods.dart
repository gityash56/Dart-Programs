/* Write a program to demonstrate String’s built-in methods
 charAt() ,substring () ,subsequence(), contains() , split() ,concat() ,
 equals() ,toUpper(), toLower(),toString(), trim(),replace(), replaceAll() */

void main() {
  String str = "Hello, Dart!";
  String str2 = " World";

  //Note : -  charAt() can not return index of white space value. e.g. if we pass index val. and its white space it return privious value.
  print('charAt(): ${str[7]}');

  // substring()
  print('substring(0, 5): ${str.substring(0, 5)}');
  print('substring(1): ${str.substring(1)}');

  // subsequence() equivalent using substring()
  print('subsequence(7, 11): ${str.substring(7, 11)}');

  // contains()
  print('contains("Dart"): ${str.contains("Dart")}');

  // split()
  List<String> splitStr = str.split(", ");
  print('split(", "): $splitStr');

  // concat() equivalent using '+'
  String concatenatedStr = str + str2;
  print('concat(): $concatenatedStr');

  // equals() equivalent using '=='
  print('equals("Hello, Dart!"): ${str == "Hello, Dart!"}');

  // toUpper()
  print('toUpper(): ${str.toUpperCase()}');

  // toLower()
  print('toLower(): ${str.toLowerCase()}');

  // toString()
  print('toString(): ${str.toString()}');

  // trim()
  String strWithSpaces = "  Hello, Dart!     ";
  print('trim(): ${strWithSpaces.trim()}');

  // replace()
  print('replace("Dart", "Flutter"): ${str.replaceFirst("Dart", "Flutter")}');

  // replaceAll()
  String strWithRepetitions = "Dart is fun. Dart is great.";
  print(
      'replaceAll("Dart", "Flutter"): ${strWithRepetitions.replaceAll("Dart", "Flutter")}');
}
