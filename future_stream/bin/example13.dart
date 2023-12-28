// stream transformation using asyncMap

Stream<String> getNames() async* {
  yield 'Shiro';
  yield 'Niko';
  yield 'Batman';
  yield 'Oreo';
}

Future<List<String>> extraCharacters(String str) async {
  // final List<String> char = [];
  final charList = <String>[];
  for(var c in str.split('')) {
    await Future.delayed(const Duration(milliseconds: 200));
    charList.add(c);
  }
  return charList;
}

void main(List<String> args) async {
  // await for(var charList in getNames().asyncMap((event) => extraCharacters(event))) {
  //   print(charList);
  //}

  var res = await getNames().asyncMap((event) => extraCharacters(event)).fold(
      '', (previous, element) {
        return '$previous ${element.join()}';
  } );
  print(res);
}