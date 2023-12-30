class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}

void main(List<String> args) {
  final person = Person();
  try {
    // avoid doing this in production, just for showcase
    // Instead use nullable value
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Oreo';
  person.lastName = 'Okinawa';
  print(person.fullName);
}
