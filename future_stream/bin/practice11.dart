/*
 Write a Dart program demonstrating the use of the broadcast stream and the 
 non-broadcast stream. Show how events are handled differently in each type of
stream.
*/

import 'dart:async';

import 'package:test/test.dart';

final List<String> names = ['Shiro', 'Ginger', 'Coco', 'Dora', 'Niko'];

StreamController<String> nonBrodcastStream() {
  final List<String> names = ['Shiro', 'Ginger', 'Coco', 'Dora', 'Niko'];

  final StreamController<String> controller = StreamController<String>();
  return controller;
}

StreamController<String> broadCastStream() {
  final StreamController<String> controller =
      StreamController<String>.broadcast();

  return controller;
}

void addEvent(StreamController<String> s) {
  for (var x in names) {
    s.sink.add(x);
  }
}

void main(List<String> args) {
  var nonBroadCastStreamController = nonBrodcastStream();

  // Listen to the Stream for the event

  nonBroadCastStreamController.stream.listen((String event) {
    print(event);
  },
      onDone: () => print('Non BroadCastStream Done'),
      onError: (error) => prints('Error: $error'));

  // add event to the stream
  addEvent(nonBroadCastStreamController);

  final StreamController<String> broadCastStreamController = broadCastStream();
  final StreamSubscription<String> sub1 =
      broadCastStreamController.stream.listen(
    (event) {
      print('sub1 $event');
    },
    onError: (error) => print('Error: $error'),
    onDone: () => print('Sub1 Done...'),
  );

  final StreamSubscription<String> sub2 =
      broadCastStreamController.stream.listen(
    (event) {
      print('sub2 $event');
    },
    onError: (error) => print('Error: $error'),
    onDone: () => print('Sub1 Done...'),
  );

  addEvent(broadCastStreamController);
  // final StreamSubscription<String> sub2 = subscription.stream.listen((event) {
  //   print('sub2 $event');
  // });
}
