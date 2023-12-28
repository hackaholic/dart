
// Broadcast Streams : Multiple Listener
// Non Broadcast Stream: Single Listener

import 'dart:async';

Future<void> nonBroadCastStreamExample() async {
  StreamController<String> controller = StreamController<String>();
  controller.sink.add("Kiki");
  controller.sink.add('Raya');
  controller.sink.add('Mini');
  controller.sink.add('Dora');

  try {
    await for(var name in controller.stream) {
      print(name);
      await for(var name in controller.stream) {
        print(name);
      }
      // above loop will give error: Bad state: Stream has already been listened to.
    }
  } catch (e) {
    print('nonBroadcast Error: $e');
  }
  controller.close();
}

Future<void> broadCastStreamExample() async {
  late final StreamController<String> controller;
  controller = StreamController<String>.broadcast();

  final StreamSubscription<String> sub1 = controller.stream.listen((event) => print('sub1: $event'));
  final sub2 = controller.stream.listen((event) {
    print('Sub2: $event');
  });
  controller.sink.add("Kiki");
  controller.sink.add('Raya');
  controller.sink.add('Mini');
  controller.sink.add('Dora');
  controller.close();

  controller.onCancel = () {
    sub1.cancel();
    sub2.cancel();
  };
}
void main(List<String> args) async {
  await nonBroadCastStreamExample();
  await broadCastStreamExample();
}