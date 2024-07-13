import 'dart:io';

void main() {
  print("Enter Any Character :"); // input of next Line
  // stdout.write("Enter Any Character :"); // input of same Line
  String? c = stdin.readLineSync();
  var value = c?.codeUnits;

  print("Ascii value of :$c is : $value  ");
}
