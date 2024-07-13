void main() {
  List<int> array1 = [1, 2, 4, 4, 5];
  List<int> array2 = List<int>.filled(array1.length, 0);

  for (int i = 0; i < array1.length; i++) {
    array2[i] = array1[i];
  }

  print("Array 1: $array1");
  print("Array 2 (copy of Array 1): $array2");
}
