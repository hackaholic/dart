// positional argument

void sayGoodBye(String name, String otherName) {
  print('Good Bye, $name, $otherName');
}

void main(List<String> args) {
  // invalid below
  // sayGoodBye();
  // sayGoodBye('Ginger');

  // valid calls
  sayGoodBye('Coco', 'Ginger');
}
