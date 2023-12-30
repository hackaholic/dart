// chain of Lazy evaluation

class Person {
  late String fullName = _getFullName();
  late String fName = fullName.split(' ').first;
  late String lName = fullName.split(' ').last;
  String _getFullName() {
    print('_getFullName is called');
    return 'Raya Ganesha';
  }
}

void main(List<String> args) {
  final person = Person();
  print(person.fullName);
  print(person.fullName);
  print(person.fullName);

  print(person.fName);
  print(person.lName);
}
