// yield*

Stream<String> maleNames() async* {
  yield 'Shiro';
  yield 'Niko';
  yield 'Batman';
  yield 'Oreo';
}

Stream<String> femaleNames() async* {
  yield 'Mini';
  yield 'Dora';
  yield 'Kiki';
  yield 'Raya';
}

/*
The yield* statement is used to yield all values from another iterable or generator, 
effectively delegating the work to that iterable or generator.
*/

Stream<String> getAllNames() async* {
  // await for(var name in maleNames()) {
  //   yield name;
  // }
  // await for(var name in femaleNames()) {
  //   yield name;
  // }
  yield* maleNames();
  yield* femaleNames();
}

void main(List<String> args) async {
  await for (var name in getAllNames()) {
    print(name);
  }
}
