class Person {
  final int age;
  const Person({required this.age});

  Person operator +(int inc) => Person(age: age + inc);

  @override
  String toString() => 'Person (age = $age)';
}

void main(List<String> args) {
  final meThisYear = Person(age: 30);
  print('Me this year is = $meThisYear');
  final meNextYear = meThisYear + 1;
  print(meNextYear);
}
