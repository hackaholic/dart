import 'dart:math';

int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

// the call method is a special method that allows an object to be invoked as if it were a function.
//If a class defines a call method, instances of that class can be called as if they were functions.

extension on IntFunction {
  int get callWithRandomValues {
    final r1 = Random().nextInt(100);
    final r2 = Random().nextInt(100);
    return call(r1, r2);
    // this.call(r1, r2);
  }
}

void main(List<String> args) {
  print(add.callWithRandomValues);
  print(sub.callWithRandomValues);
}
