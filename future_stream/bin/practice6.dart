/*
Write a Dart program demonstrating the use of the asyncExpand method to transform 
each element of a stream asynchronously into a sequence of events.
*/

Stream<String> getPets() async* {
  final List<String> names = ['Shiro', 'Kiki', 'Raya', 'Mini', 'Oreo'];
  for (var x in names) {
    yield x;
  }
}

Stream<String> times2<String>(String event) {
  // for (int i = 0; i < 2; i++) {
  //   yield event;
  // }

  return Stream.fromIterable(Iterable.generate(2, (_) => event));
}

void main(List<String> args) async {
  // asyncExpand -> Transforms each element into a sequence of asynchronous events.
  var res = getPets().asyncExpand((event) => times2(event));
  await for (var x in res) {
    print(x);
  }
}
