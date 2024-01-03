// for over map
void main(List<String> args) {
  const info = {
    'name': 'Oreo',
    'age': 5,
    'height': 1.1,
    'isMarried': false,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
      'country': 'USA',
    },
  };

  for (final x in info.entries) {
    // every entry have key and value property
    print('key: ${x.key}, value: ${x.value}');
  }
}
