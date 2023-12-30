// Factory Constructor
// Returns the instance of subclass

class Vehicle {
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vechile of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}

void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
}
