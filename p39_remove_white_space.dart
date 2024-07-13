void main() {
  String str2 = "This is a string without spaces";
  String noSpaceStr = str2.replaceAll(RegExp(r"\s"),
      ""); // for e.g. this is use with string method with replaceAll and RegExp condition.
  print('Use with replaceAll() : ${noSpaceStr}');

  String str = "  Hello World  ";
  print(str);
  String trimmedStr = str
      .trim(); // to use this method , its remove whitespace before string and after string.
  print(
      'Use with trim() its remove white space before nd after string :${trimmedStr}');
}
