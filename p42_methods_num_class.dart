void main() {
  num myInt = -42;
  num myDouble = 42.75;

  // Demonstrating abs() method
  print('Absolute value of $myInt: ${myInt.abs()}');
  print('Absolute value of $myDouble: ${myDouble.abs()}');

  // Demonstrating ceil() method
  print('Ceiling of $myInt: ${myInt.ceil()}');
  print('Ceiling of $myDouble: ${myDouble.ceil()}');

  // Demonstrating floor() method
  print('Floor of $myInt: ${myInt.floor()}');
  print('Floor of $myDouble: ${myDouble.floor()}');

  // Demonstrating round() method
  print('Rounding $myInt: ${myInt.round()}');
  print('Rounding $myDouble: ${myDouble.round()}');

  // Demonstrating toDouble() method
  print('$myInt as a double: ${myInt.toDouble()}');
  print('$myDouble as a double: ${myDouble.toDouble()}');

  // Demonstrating toInt() method
  print('$myInt as an int: ${myInt.toInt()}');
  print('$myDouble as an int: ${myDouble.toInt()}');

  // Demonstrating clamp() method
  print('$myInt clamped between -50 and 50: ${myInt.clamp(-30, 50)}');
  print('$myDouble clamped between 40 and 45: ${myDouble.clamp(40, 45)}');

  // Demonstrating remainder() method
  print('Remainder of $myDouble divided by 7: ${myDouble.remainder(7)}');
  print('Remainder of $myInt divided by 7: ${myInt.remainder(7)}');
}
