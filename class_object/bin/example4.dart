// getter

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }

class Person {
  final String firstName;
  final String lastName;

  const Person({
    required this.firstName,
    required this.lastName,
  });

  // getter, it will get computed on every call
  String get fullName => '$firstName $lastName';
}

void main(List<String> args) {
  const Person coco = Person(firstName: 'Coco', lastName: 'Gopalan');
  print(coco.fullName);
}
