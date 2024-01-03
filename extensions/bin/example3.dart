// range implementation on Int
// 1.to(10) -> 1 to 10
// 1.to(10, inclusiv: false) -> 1 to 9
// 10.to(1) -> 10 to 1

extension on int {
  Iterable<int> to(int end, {bool inclusive = false}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}

void main(List<String> args) {
  print(1.to(10));
  print(1.to(10, inclusive: true));
  print(20.to(10));

  print(10.to(10, inclusive: true));
  print(10.to(10));
}
