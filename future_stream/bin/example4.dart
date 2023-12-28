// Streams

void main(List<String>  args) async {
   await for (final i in getNumer()) {
     print(i);
   }
   try {
     await for (final name in getNames()) {
       print(name);
     }
   } catch (e) {
     print(e);
   }
}

Stream<int> getNumer() async* {
  for (int i=0;i<10;i++) {
    await Future.delayed(
      const Duration(seconds: 1)
    );
    yield i;
  }
}

Stream<String> getNames() async* {
  for (int i=0;i<10;i++) {
    await Future.delayed(
        const Duration(seconds: 1)
    );
    yield 'Coco';
    throw Exception("Something went Wrong");
    // yield 'Mini' // Dead code cannot yield after throw Exception
  }
}