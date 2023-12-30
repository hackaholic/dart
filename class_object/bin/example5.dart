//Methods

class Car {
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping ....');
    print('Stopped.');
  }
}

void main(List<String> args) {
  print(Car().speed);
  Car().speed = 100;
  final myCar = Car();
  print(myCar.speed);
  print(Car().speed);
  myCar.drive(speed: 30);
  myCar.drive(speed: 40);
  myCar.stop();
}
