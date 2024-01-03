// Asynchronous Generator

void main(List<String> args) async {
  // print('Sum: ${await numbers().reduce((previous, element) => previous + element)}');

  print('Event Only:');
  await for (var num in numbers(end: 10, f: isEven)) {
    print(num);
  }
  print('Odd Only:');
  await for (var num in numbers(end: 10, f: isOdd)) {
    print(num);
  }
}

typedef IsIncluded = bool Function(int value);

bool isEven(int v) => v % 2 == 0;
bool isOdd(int v) => v % 2 != 0;

Stream<int> numbers({int start = 0, int end = 4, IsIncluded? f}) async* {
  for (int i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
