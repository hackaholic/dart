// Stream transformers

import 'dart:async';

Stream<String> names = Stream.fromIterable(
  ['Coco', 'Mini', 'Shiro', 'Dora']
);

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((event) => event.toUpperCase());
  }
}

extension on Stream<String> {
  Stream<String> get capitalized => transform(ToUpperCase());
  Stream<String> get capitalizedUsingMap => map((event) => event.toUpperCase());
  Stream<int> get getLength => map((event) => event.length);
}

void main(List<String> args) async {
  // simple transformation
  await for (var name in names) {
    print(name.toUpperCase());
  }

  // Transformation using map
  await for (var name in names.map((event) => event.toUpperCase())) {
    print(name);
  }

  // Stream Transformers
   await for(var cap in names.capitalized){
    print(cap);
   }

   await for(var cap in names.capitalizedUsingMap) {
    print(cap);
   }

  await for(var cap in names.getLength) {
    print(cap);
   }
}

