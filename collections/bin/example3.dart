// More on Sets

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person -> name: $name, age: $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      ((other is Person) && (name == other.name) && (age == other.age));
}

class Cat {
  final String name;
  final int age;

  Cat({required this.name, required this.age});

  @override
  String toString() => 'Person -> name: $name, age: $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      ((other is Cat) && (name == other.name) && (age == other.age));
}

void main(List<String> args) {
  final person1 = Person(name: 'Coco', age: 6);
  final person2 = Person(name: 'Coco', age: 6);

  print('-----------------------');
  print(person1.hashCode);
  print(person2.hashCode);

  final persons = {person1, person2};
  print(persons);

  print('-----------------------');
  final cat1 = Cat(name: 'Coco', age: 6);
  final cat2 = Cat(name: 'Coco', age: 6);
  print(cat1.hashCode);
  print(cat2.hashCode);
}
