void main() {
  var myNum = 10;
  var myNum2 = 10.20;
  var myString = 'Hello Dart';
  var myBool = true;
  var myArray = [1, 2, 3];
  var setVar = {1, 2, 3};
  var nullVar = null;
  var person = {'id': 1, 'name': 'John Doe'};

  print(' myNum is : ${myNum.runtimeType}');
  print(' myNum2 is : ${myNum2.runtimeType}');
  print(' myString is : ${myString.runtimeType}');
  print(' myBool is : ${myBool.runtimeType}');
  print(' myArray is : ${myArray.runtimeType}');
  print(' setVar is : ${setVar.runtimeType}');
  print(' nullVar is : ${nullVar.runtimeType}');
  print(' person is : ${person.runtimeType}');
}
