void printDetails<T, R>(T item1, R item2) {
  print('$item1 -> ${item1.runtimeType}');
  print('$item2 -> ${item2.runtimeType}');
}

void main(List<String> args) {
  printDetails(23, 'Hello');
  print('----------------');
  printDetails('Pi', 3.14);
}
