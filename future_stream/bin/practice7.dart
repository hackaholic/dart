/*
Write a Dart program demonstrating the use of a StreamController to create a 
custom stream and add events to it.
*/

import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.add('Hello');
  controller.add('Shiro');

  await for (var x in controller.stream) {
    print(x);
  }
  controller.close();
}
