String provideName() {
  print("provide Function is called");
  return 'Batman';
}

void main(List<String> args) {
  print('Before');
  late String name = provideName(); // lazy evulation
  // provideName will be called only when variable name is used.
  print('After');
  print(name); // provideName is called here
}
