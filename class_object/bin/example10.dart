// Abstract class

enum VehicleKind { car, truck, motercycel, bicycle }

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class MotorCycle implements Vehicle {
  const MotorCycle();
  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('MotorCycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motercycel;
}

void main(List<String> args) {
  const car = Car();
  print(car);
  print(car.kind);
  car.accelerate();
  car.decelerate();
}
