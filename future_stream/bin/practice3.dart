/*
Write a Dart program demonstrating the use of the yield keyword to produce a sequence of values asynchronously in a generator function.
*/

Iterable<int> getNumbers<T>({required int a}) sync* {
  for (int i = 0; i < a; i++) {
    yield i;
  }
}

void main(List<String> args) {
  for (var v in getNumbers(a: 10)) {
    print(v);
  }
}
