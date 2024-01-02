void doSomething({String name = 'Coco'}) {
  print('Hello $name');
}

void main(List<String> args) {
  doSomething();
  doSomething(name: 'Shiro');
  // doSomething(name: null); // this will throw error
}
