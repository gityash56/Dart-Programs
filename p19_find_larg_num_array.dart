void main() {
  List<int> numbers = [34, 199, 67, 89, 23, 56, 78];
  int largest = findLargestNumber(numbers);
  print("The largest number is: $largest");
}

int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}
