/*
Write a Dart program demonstrating the use of the asyncMap method to transform 
each event in a stream asynchronously into a new event.
*/

Stream<int> getNum(int n) => Stream.fromIterable(Iterable.generate(n));

void main(List<String> args) async {
  await for (var x in getNum(10).asyncMap((event) => event * 2)) {
    print(x);
  }

  print('--------------------------');

  final resMap = getNum(10).asyncMap((event) async* {
    for (int i = 0; i <= event; i++) {
      yield i;
    }
  });

  await for (var res in resMap) {
    await for (var x in res) {
      print(x);
    }
  }
}



/*
    asyncMap: For each event in the original stream, asyncMap applies a 
    transformation function and emits a single event into the output stream. 
    Each event in the output stream corresponds to exactly one event in the 
    input stream. Therefore, asyncMap produces a new stream where each event is 
    potentially different from the original event.

    asyncExpand: For each event in the original stream, asyncExpand applies a 
    transformation function that emits a sequence of events. These events are 
    then inserted into the same output stream. As a result, the output stream 
    may contain multiple events for each event in the input stream, effectively 
    expanding the stream. Each event emitted by the transformation function adds
     to the output stream without creating a new stream.
*/