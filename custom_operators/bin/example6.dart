// {'name': 'coco', 'age': 5} + {'addr':'123 Maint St'}
// -> {'name': 'coco', 'age': 5, 'addr':'123 Maint St'}

// {'name': 'coco', 'age':5} - {'age':5};
// -> {'name': 'coco'}

extension MapOperator<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere(
        (key, value) => other.containsKey(key) && value == other[key]);
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield this;
    }
  }
}

void main(List<String> args) {
  print({'name': 'coco', 'age': 5} + {'addr': '123 Maint St'});
  print({'name': 'coco', 'age': 5} - {'age': 5});
  print({'name': 'Shiro', 'age': 4} * 2);
}
