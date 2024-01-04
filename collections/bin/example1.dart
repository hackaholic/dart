// List
void main(List<String> args) {
  final names = ['Dora', 'Coco', 'Mini', 'Ginger'];

  for (final x in names) {
    print(x);
  }

  print('------------------------');

  for (final x in names.reversed) {
    print(x);
  }

  print('------------------------');
  if (names.contains('Coco')) {
    print('Coco in the list');
  }

  print('------------------------');
  for (final x in names.where((element) => element.startsWith('D'))) {
    print(x);
  }

  print('------------------------');
  print('${names[0]}, ${names[1]}, ${names[2]}');

  try {
    names[4];
  } catch (e) {
    print(e);
  }

  print('------------------------');
  names.sublist(1).forEach(print);
  names.sublist(1, 3).forEach(print);

  print('------------------------');
  final age = [20, 30, 40];
  // age = [10,30, 50];  // throw error
  age.add(50);
  age.add(60);
  print(age);

  print('------------------------');
  print(names.map((e) => e.length));
  print(names.map((e) => e.toUpperCase()));

  print('------------------------');
  final num = Iterable.generate(5);
  final sum =
      num.fold(0, (previousValue, element) => (previousValue + element) as int);
  print(sum);

  print('------------------------');
  print(names.fold<int>(0, (prev, cur) => prev + cur.length));

  print('------------------------');
  final result =
      names.fold<String>('', (prev, cur) => '$prev ${cur.toUpperCase()}');
  print(result);
}
