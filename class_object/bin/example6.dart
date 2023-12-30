// setter

class Car {
  int _speed = 0; // private variable prefix with _

  int get speed => _speed;
  set speed(int nSpeed) {
    if (nSpeed < 0) {
      throw Exception('Speed cannot be negative');
    }
    _speed = nSpeed;
  }

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
  final car = Car();
  try {
    car.drive(speed: 10);
    car.drive(speed: -1);
  } catch (e) {
    print(e);
  }
}
