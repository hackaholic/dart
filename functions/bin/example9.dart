void greet({required String? name}) {
  print('Hello, $name');
}

void main(List<String> args) {
  greet(name: 'Dora');
  greet(name: null);
  // greet(); // result in error
}
