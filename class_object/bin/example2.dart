class Person {
  final String name;
  final int age;

  // constructor name is same as class name
  const Person(this.name, this.age);

  // named constructor
  const Person.foo()
      : name = 'foo',
        age = 20;

  // const Person.bar(int age)
  //     : name = 'Bar',
  //       age = age;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({String? name, int? age})
      : name = name ?? 'Baz',
        age = age ?? 30;
}

void main(List<String> args) {
  print('--------------------');
  const me = Person('Coco', 5);
  print('${me.name}, ${me.age}');

  print('--------------------');
  const foo = Person.foo();
  print('${foo.name}, ${foo.age}');

  print('--------------------');
  const bar = Person.bar(20);
  print('${bar.name}, ${bar.age}');

  print('--------------------');
  const baz = Person.other();
  print('${baz.name}, ${baz.age}');

  print('--------------------');
  const mini = Person.other(name: 'Mini');
  print('${mini.name}, ${mini.age}');

  print('--------------------');
  const dora = Person.other(name: 'Dora', age: 7);
  print('${dora.name}, ${dora.age}');
}
