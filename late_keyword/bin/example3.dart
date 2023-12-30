import 'dart:io';

class Person {
  final int age;
  late String description = heavyCalculationOfDescription();

  Person({this.age = 5}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Starting Heavy calculation');
    sleep(const Duration(seconds: 2));
    print("Completed Heavy calculation");
    return 'Ginger Gopalan';
  }
}

void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);
}
