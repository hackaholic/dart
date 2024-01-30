// name parameter with required
// required named parameter cannot have default value
void greet({required String name}) {
  print('Hello $name');
}

void main(List<String> args) {
  greet(name: 'Raya');

  /// greet(name: null); // result in error
}
