/*
write a Dart program demonstrating the use of the then method to handle the result of a Future asynchronously.
*/

import 'dart:math';

Future<int> getNum([int? limit]) async {
  await Future.delayed(const Duration(seconds: 2));
  final int val = Random().nextInt(limit ?? 100);
  print(val);
  return val;
}

void main(List<String> args) async {
  // check for env or odd
  print(await getNum().then((value) => value % 2 == 0));
}
