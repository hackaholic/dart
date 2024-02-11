/*
Write a Dart program demonstrating the use of the await for loop to iterate
 over events in a stream asynchronously.
*/

import 'dart:math';

Stream<int> getNumber(int n) async* {
  for (int i = 0; i < n; i++) {
    yield Random().nextInt(100);
  }
}

void main(List<String> args) async {
  await for (var x in getNumber(10)) {
    print(x);
  }
}
