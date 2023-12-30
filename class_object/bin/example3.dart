class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    if (runtimeType == Vehicle) {
      return '$runtimeType , $wheelCount wheels';
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}

// In Dart every class is subclass of Object
// So above Vehicle class can be written as extends Object

// class Vehicle extends Object {
//   final int wheelCount;
//   const Vehicle(this.wheelCount);
// }

void main(List<String> args) {
  final v = Vehicle(4);
  print(v.toString());

  print('--------------------------');
  print(Car());
  print(Bicycle());
}
