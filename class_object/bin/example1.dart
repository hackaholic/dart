class Person {
  final String name;
  final int age;

  // constructor name is same as class name
  const Person(this.name, this.age);
}

class PersonNamed {
  final String name;
  final int age;

  const PersonNamed({required this.name, required this.age});
}

void main(List<String> args) {
  const person1 = Person('Coco', 5);
  const person2 = PersonNamed(name: 'Mini', age: 7);
  print('Person1: ${person1.name}, ${person1.age}');
  print('Person1: ${person2.name}, ${person2.age}');
}
