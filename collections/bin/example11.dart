// Synchronous Generator

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing Alice');
  yield 'Alice';
  print('Producing Ava');
  yield 'Ava';
  print('Producing Neo');
  yield 'Neo';

  print('Producing Template Names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing "Bob"');
  yield 'Foo';
  print('Producing "Alice"');
  yield 'Bar';
  print('Producing "Ava"');
  yield 'Baz';
  print('Producing "Neo"');
  yield 'Pal';
}

void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}
