import 'package:collection/collection.dart';

class Person {
  final String name;
  final List<Person>? _siblings;

  Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings {
    print('I am Person Constructor');
  }

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings);
}

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(
        name: 'Bar',
      ),
    ],
  );

  try {
    foo.siblings?.add(
      Person(
        name: 'Baz',
      ),
    );
  } catch (e) {
    print(e);
  }

  // all this drama but still one can access _siblings
  foo._siblings?.add(
    Person(
      name: 'Baz',
    ),
  );
}
