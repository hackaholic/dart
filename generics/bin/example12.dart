class Person<T extends num> {
  final T age;
  const Person({required this.age});

  int get ageRound => age.round();
}

void main(List<String> args) {
  final coco = Person(age: 7);
  final mini = Person(age: 7.5);
  print(coco.ageRound);
  print(mini.ageRound);
}
