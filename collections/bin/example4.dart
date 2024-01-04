// Map

void main(List<String> args) {
  final Map<String, Object> info = {
    'name': 'Shiro',
    'age': 5,
  };

  print(info);
  print(info['name']);
  print(info['age']);
  print(info['lol'] ?? 'Default');

  print('---------------------');
  print(info.keys);
  print(info.values);

  print('---------------------');
  info.putIfAbsent('height', () => 20);
  print(info);
  info.putIfAbsent('height', () => 30);
  print(info);

  info['height'] = 25;
  print(info);

  print('---------------------');
  // iterating over map
  for (final x in info.entries) {
    print('key ${x.key}, value: ${x.value}');
  }

  print('---------------------');
  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height key not found');
  }

  print('---------------------');
  // return null if key is no present
  print(info['weight']);
}
