typedef KeyValue<K, V> = MapEntry<K, V>;

void main(List<String> args) {
  const one = KeyValue(1, 2);
  const two = KeyValue(1, 2.2);
  const three = KeyValue(1, 'Foo');
  const KeyValue four = KeyValue(1, 2);

  print(one);
  print(two);
  print(three);
  print(four);
}
