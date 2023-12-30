void main(List<String> args) {
  List<String>? pet;
  List<String?>? names;
  names?.add('Coco');
  names?.add(null);
  print(names);
  // will print null as names is null not []

  final String? first = names?.first;
  print(first ?? 'No first name found');

  names = [];
  names.add('Coco');
  names.add(null);
  print(names);
}
