/*
Write a Dart program demonstrating the use of the async* keyword to define a 
function that returns a stream of values asynchronously.
*/

Stream<int> getNumbers({int n = 10}) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(const Duration(milliseconds: 100));
    yield i;
  }
}

void main(List<String> args) async {
  getNumbers().listen((event) {
    print(event);
  }); // this is non-blocking

  print('Am I printed after Numbers?');
  print('----------------');
  await for (var x in getNumbers(n: 5)) {
    print(x);
  }

  print('I Should be Printed at End');
}
