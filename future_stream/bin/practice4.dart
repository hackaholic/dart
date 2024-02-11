/*
 Write a Dart program demonstrating the use of the yield* keyword to yield values 
 from another iterable asynchronously in a generator function.
 */

import 'dart:math';

Iterable<int> getNumber({required int n, required int max}) sync* {
  for (int i = 0; i < max; i++) {
    yield Random().nextInt(max);
  }
}

Iterable<int> sum() sync* {
  yield* getNumber(n: 10, max: 100);
}

void main(List<String> args) {
  for (var x in sum()) {
    print(x);
  }
}
