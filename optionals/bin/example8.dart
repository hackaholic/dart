void main(List<String> args) {
  final String? firstName = null;

  if (firstName == null) {
    print('fistName is null');
  } else {
    // final int length = firstName?.lenght;
    final int length = firstName.length;
    print(length);
  }
}
