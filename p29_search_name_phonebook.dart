import 'dart:io';

void main() {
  Map<String, String> phonebook = {
    'veer': '1234567890',
    'jay': '9876543210',
    'Mihir': '5556667777',
  };

  print('Enter a name to search phonebook :');
  String? nameToSearch = stdin.readLineSync();

  if (nameToSearch != null) {
    if (phonebook.containsKey(nameToSearch)) {
      print('Name: $nameToSearch, Number: ${phonebook[nameToSearch]}');
    } else {
      print('Not Found!');
    }
  } else {
    print('Invalid input!');
  }
}
