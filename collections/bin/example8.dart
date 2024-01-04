import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
    },
  };

  info.addAll({'phone': '123-456-7890'});
  print(info);

  print('--------------------------------');
  final info2 = UnmodifiableMapView(info);
  try {
    info2.addAll({'phone': 123 - 456 - 7890});
  } catch (e) {
    print(e);
  }
}
