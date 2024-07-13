/* Write a program to demonstrate methods of List.
 size() , add() , set() ,indexOf() , lastIndexOf() remove() , contains() , subList()  */

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];

  // 1. size() - Getting the size of the list
  print("Size of the list: ${numbers.length}");

  // 2. add() - Adding elements to the end of the list
  numbers.add(60);
  print("List adding 60: $numbers");

  // 3. set() - Setting the value at a specific index
  numbers[1] = 25;
  print("List after setting index 1 to 25: $numbers");

  // 4. indexOf() - Finding the index of a specific element
  int index = numbers.indexOf(30);
  print("Index of 30: $index");

  // 5. lastIndexOf() - Finding the last index of a specific element
  numbers.add(30);
  print('Add 30 : $numbers');
  int lastIndex = numbers.lastIndexOf(30);
  print("Last index of 30: $lastIndex");

  // 6. remove() - Removing a specific element from the list
  numbers.remove(30);
  print("List removing first 30: $numbers");

  // 7. clear() is equivalent of removeAll - Removing all occurrences of specified elements
  numbers.clear();
  print("List removeAll: $numbers"); // List with clear method not removeAll.

  // 8. retainAll() - Retaining only the specified elements

// Its Set method  doesn't perform retainAll with List thats why here declare set.
  final setvar = <int>{1, 3, 5, 6, 7, 8, 9, 2};
  print('Set of int : $setvar');
  setvar.retainAll({1, 4, 5, 3, 6, 13, 7}); // only print matching of values.
  print('retainAll : $setvar');

  // add list    // before its[]
  numbers.addAll([10, 25, 40, 50, 60, 30]);
  print('Add new list :$numbers');

  // 9. contains() - Checking if the list contains a specific element
  bool contains10 = numbers.contains(10);
  print("Does the list contain 10? : $contains10");

  // 10. containsAll() - Checking if the list contains all specified elements

  // containsAll is a Set class method. its not work with list thats why here declare set variable
  bool containsAll = setvar.containsAll({10, 4});
  print(
      "Does the setvar contain all elements 10 and 4? $containsAll"); // in set values it doesn't match.

  print(numbers);

  // 11. subList() - Getting a sublist from the list
  // it perform with other variable.
  List<int> subList = numbers.sublist(0, 2);
  print("Sublist from index 0 to 2: $subList");
}
