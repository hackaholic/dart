void main(List<String> args) {
  final names = ['Dora', 'Coco', 'Mini', 'Ginger'];
  final upperCase = names.map((e) {
    print('map got called');
    return e.toUpperCase();
  });

  print('------------------------------');
  for (final x in upperCase.take(3)) {
    print(x);
  }
}
