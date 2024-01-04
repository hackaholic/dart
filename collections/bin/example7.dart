import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['Dora', 'Coco', 'Mini', 'Ginger'];
  names.add('Kiki');
  print(names);

  print('----------------------------');
  final readOnly = UnmodifiableListView(names);
  try {
    readOnly.add('Batman');
  } catch (e) {
    print(e);
  }
}
