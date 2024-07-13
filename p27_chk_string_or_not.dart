/* Write a program to check whether the string is anagram or not.
input :
     Anaagramm
     Mmaganaar
output :
      Anagram
(note : Here count a frequency of characters each characters of both string and match the frequencies . If frequency of each character of string1 matches with another String’s characters frequency then and then Strings called anagram. Ignore cases)
example
    hello
    lloeh
    for (Hello) { h : 1, e : 1 , l : 2, o : 1 }
    for (lloeh)  { h : 1, e : 1 , l : 2, o : 1 }
    output : Anagram */

import 'dart:collection';

bool areAnagrams(String str1, String str2) {
  // Convert both strings to lowercase to ignore case sensitivity
  str1 = str1.toLowerCase();
  str2 = str2.toLowerCase();

  // If the lengths of the strings are not equal, they cannot be anagrams
  if (str1.length != str2.length) {
    return false;
  }

  // Create a frequency map for each string
  Map<String, int> frequencyMap1 = _buildFrequencyMap(str1);
  Map<String, int> frequencyMap2 = _buildFrequencyMap(str2);

  // Print the frequency maps
  print('for ($str1) { ${_mapToString(frequencyMap1)} }');
  print('for ($str2) { ${_mapToString(frequencyMap2)} }');

  // Compare the frequency maps
  return _mapsAreEqual(frequencyMap1, frequencyMap2);
}

Map<String, int> _buildFrequencyMap(String str) {
//   Creates an unordered hash-table based [Map].

// The created map is not ordered in any way. When iterating the keys or values, the iteration order is unspecified except that it will stay the same as long as the map isn't changed.
  Map<String, int> frequencyMap = HashMap<String, int>();
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (frequencyMap.containsKey(char)) {
      frequencyMap[char] = frequencyMap[char]! + 1;
    } else {
      frequencyMap[char] = 1;
    }
  }
  return frequencyMap;
}

bool _mapsAreEqual(Map<String, int> map1, Map<String, int> map2) {
  if (map1.length != map2.length) {
    return false;
  }
  for (String key in map1.keys) {
    if (map1[key] != map2[key]) {
      return false;
    }
  }
  return true;
}

String _mapToString(Map<String, int> map) {
  List<String> entries = [];
  map.forEach((key, value) {
    entries.add('$key: $value');
  });
  return entries.join(', ');
}

void main() {
  String str1 = 'Anaagramm';
  String str2 = 'Mmaganaar';

  if (areAnagrams(str1, str2)) {
    print('Anagram');
  } else {
    print('Not an Anagram');
  }
}
