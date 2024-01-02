// named parameter can be in any order while calling the func.

void describePet({String? name, int? age}) {
  print('Hello $name, you are $age years old');
}

void main(List<String> args) {
  describePet();
  describePet(name: 'Mini');
  describePet(age: 6);
  describePet(age: 7, name: 'Ginger');
  describePet(name: 'Oreo', age: 7);
}
