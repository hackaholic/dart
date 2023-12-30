void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();
  final foo = lastName;
  // foo varibale should not be optional
  // but dart analysis is detecting as optional string

  if (lastName?.contains('Bar') ?? false) {
    print('1: lastName contains Bar');
  }

  if (lastName?.contains('Bar') == true) {
    print('2: lastName contains Bar');
  }
}
