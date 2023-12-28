// stream Controllers
// streams Controllers are read and write.

import 'dart:async';

void main(List<String> arg) async {
  final controller = StreamController<String>();
  controller.sink.add('Hello');
  controller.sink.add('World');

  await for(var val in controller.stream) {
    print(val);
  }
  controller.close();
}