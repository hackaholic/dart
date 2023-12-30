// static properties and methods

class Person {
  // static variable is like global, change will get reflected in all instance
  // static variable cannot be change by instances
  static String name = '';
}

class Car {
  final String name;
  static int _carInstance = 0;
  Car({required this.name}) {
    _incrementCarInstance();
  }
  static int get carsInstance => _carInstance;
  static void _incrementCarInstance() => _carInstance++;
}

void main(List<String> args) {
  Person.name = 'Hello';
  print(Person.name);
  // print(Person().name)

  print(Car.carsInstance);
  print(Car(name: 'My Car'));
  print(Car.carsInstance);
  print(Car(name: 'Your Car'));
  print(Car.carsInstance);
}
