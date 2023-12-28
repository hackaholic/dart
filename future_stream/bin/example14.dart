// asyncExpand

Stream<String> getNames() async* {
  yield 'Shiro';
  yield 'Niko';
  yield 'Batman';
  yield 'Oreo';
}

Stream<String> times3(String value)  =>
    Stream.fromIterable(
      Iterable.generate(3, (_) => value)
    );

void main(List<String> args) async {
  final res = getNames().asyncExpand((event) => times3(event));
  await for(var name in res) {
    print(name);
  }
}