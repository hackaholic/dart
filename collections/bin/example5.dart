// Iterables they are lazly evaluted

String getName(int i) {
  print('getName is called');
  return 'Ram #$i';
}

void main(List<String> args) {
  final iterable = Iterable.generate(5, (i) => getName(i));
  print(iterable);

  print('-------------------------');
  for (final x in iterable.take(2)) {
    print(x);
  }
}
