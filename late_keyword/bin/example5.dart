class Person {
  late String description;
}

class Dog {
  late final String description;
}

void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description);

  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description);

  try {
    // final variable is only initialized once
    // if again aggigned with value will throw error.
    woof.description = 'Description 2';
    print(woof.description);
  } catch (e) {
    print(e);
  }
}
