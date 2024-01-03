// why name is needed for extension

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}

extension ShortDescription on Person {
  String get description => '$name, $age';
}

extension LongDescription on Person {
  String get description => '$name is $age years old';
}

void main(List<String> args) {
  final coco = Person(name: 'Coco', age: 5);
  print(ShortDescription(coco).description);
  print(LongDescription(coco).description);
}
