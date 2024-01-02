int Function() doSomething(int a, int b) => () => a + b;
void main(List<String> args) {
  final myFunc = doSomething(10, 20);
  print(myFunc());

  print(doSomething(30, 90)());
}
