// Handling error on Stream

import 'dart:async';

Stream<String> getNames() async* {
  yield 'Shiro';
  yield 'Niko';
  yield 'Batman';
  yield 'Oreo';
  throw "All names are out";
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  // @override
  // Stream<T> bind(Stream<T> stream) => stream.handleError(
  //     (e,s){}
  // );

  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();
    stream.listen(
        controller.sink.add,
        onError: (_){}
    );
    return controller.stream;
  }
}


extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorUsingHandleError() =>
      handleError((error, stackTrace){});

  Stream<T> absorbErrorUsingHandlers() => transform(
    StreamTransformer.fromHandlers(
      handleData: (value, sink) => sink.add(value),
      handleError: (_,__, sink) => sink.close()
    )
  );

  Stream<T> absorbeErrorUsingTransformer() => transform(StreamErrorAbsorber());

}


void main(List<String> args) async {

  await for(var name in getNames().handleError((_){})){
    print(name);
  }
  await for(var name in getNames().absorbErrorUsingHandleError()){
    print(name);
  }

  await for(var name in getNames().absorbErrorUsingHandlers()){
    print(name);
  }

  await for (var name in getNames().absorbeErrorUsingTransformer()){
    print(name);
  }

}