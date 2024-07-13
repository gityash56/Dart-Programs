void main() {
  List<int> numbers = [3, 1, 4, 1, 55, 9, 2, 6, 105, 3, 5];

  //  This compares b to a. If b is greater than a ( b > a) , it returns a positive number, which tells the sort method to place b before a .
  numbers.sort((a, b) => b.compareTo(a));

  print('Sort the array in descending order : $numbers');
}
