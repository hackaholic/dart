// extention on map

const json = {
  'name': 'Ginger',
  'age': 20,
};

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(K key, R? Function(V value) func) {
    final val = this[key];
    if (val != null && val is T) {
      return func(val);
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final map = {
    'name': 'Ginger',
    'age': 3,
  };

  // map['Age']?.toString().length;

  final String? ageAsString =
      json.find<int>('age', (value) => value.toString());

  print(ageAsString);

  final String helloName =
      json.find<String>('name', (value) => 'hello, $value');
  print(helloName);
}
