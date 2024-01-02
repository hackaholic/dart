void sayHello(String name) {
  print('Hello $name');
}

// named parameter with default value
void greet({String name = 'Coco'}) {
  print('Greet $name');
}

// null is not accepted
void goodBye({required String name}) {
  print('GoodBye $name');
}

// null is allowed
void welcome({String? name}) {
  print('Welcome $name');
}

void main(List<String> args) {
  // sayHello(); // error
  sayHello('Coco');
  greet(name: 'Kiki');
  greet();
  goodBye(name: 'Niko');
  welcome();
  welcome(name: 'Oreo');
}
