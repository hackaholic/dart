/*
Write a Dart program demonstrating the use of the listen method to subscribe to 
events on a stream and handle those events asynchronously.
*/

import 'dart:async';

Stream<String> getPetNames() async* {
  final List<String> names = ['Shiro', 'Kiki', 'Raya', 'Mini', 'Oreo'];

  for (var x in names) {
    yield x;
  }
}

Stream<String> getPetNamesStream() {
  final List<String> names = ['Shiro', 'Kiki', 'Raya', 'Mini', 'Oreo'];
  final StreamController<String> controller = StreamController();
  names.forEach((element) {
    controller.sink.add(element);
  });

  return controller.stream;
}

void main() {
  getPetNames().listen((event) {
    print('$event ${event.length}');
  });

  getPetNamesStream().listen((event) {
    print('${event.toUpperCase()} ${event.split('').reversed.join()}');
  });
}
