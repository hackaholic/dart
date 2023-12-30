void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  print('After');
  print(fullName);

  print('----------------');
  // assigning late variable to non late variable
  late final name = getFullName();
  final resolved = name;
  print('resolved: $resolved');
}

String getFullName() {
  print('getFullName() is called');
  return 'Ginger Tirupati';
}
