// Inheritance

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;
  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}

// class Mom extends Person {
//   const Mom({required super.role});
// }

void main(List<String> args) {
  final mom = Mom();
  final dad = Dad();
  print(mom.role);
  print(dad.role);
}
