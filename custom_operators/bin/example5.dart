// [1,2, 3] - [1,2] -> [3]
// [1,2,3,4] - [1,4] -> [2,3]
// [1,2,3] - [1,2,3] -> []

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}

void main(List<String> args) {
  print([1, 2, 3] - [1, 2]);
  print([1, 2, 3, 4] - [1, 4]);
  print([1, 2, 3] - [1, 2, 3]);
  print(['bar', 'foo', 'bar'] - ['bar']);
  print([1, 2, 'bar'] - ['bar']);
}
