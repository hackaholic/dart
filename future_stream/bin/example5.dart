void main(List<String> args) async {
  // await for(final name in getNames()) {
  //   await for(final c in getCharacters(name)) {
  //     print(c);
  //   }
  // }

  final result = getNames().asyncExpand((element) => getCharacters(element));
  await for(final c in result){
    print(c);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for(int i=0;i<fromString.length;i++){
    await Future.delayed(const Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'Coco';
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'Niko';
}