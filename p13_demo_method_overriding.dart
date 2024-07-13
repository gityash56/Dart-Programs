class Vehicle {
  void start() {
    print('Vehicle started');
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print('\nCar started , This is Method Overriding.');
  }
}

void main() {
  Vehicle vehicle =
      Car(); // Creating an instance of Car, but referencing it as a Vehicle
  vehicle.start();
}
