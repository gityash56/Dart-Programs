void main() {
  List<int> numbers = [34, 199, 67, 89, 23, 56, 78];
  int smallest = findSmallestNumber(numbers);
  print("The smallest number is: $smallest");
}

int findSmallestNumber(List<int> numbers) {
  int smallest = numbers[0];
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
  }
  return smallest;
}
