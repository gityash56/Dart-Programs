void main() {
  var number = [1, 2, 5, 4, 3, 6, 7, 8, 9, 0];

  print('Original Array : $number');

  final rev = number.reversed;

  print('After Reverse : ${rev.toList()}');
}
