void main(List<String> args) async {
  print(await getNames().toList());
}

Stream<String> getNames() async* {
  yield 'Shiro';
  yield 'Niko';
  yield 'Batman';
  yield 'Oreo';
}
