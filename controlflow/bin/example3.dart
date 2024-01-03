// modern for loop
void main(List<String> args) {
  const names = <String>['Coco', 'Mini', 'Dora'];
  for (final x in names) {
    print(x);
  }

  print('----------------------');
  for (final x in names) {
    if (x.startsWith('D')) {
      continue; // jump to next element, dont execute below
    }
    print(x);
  }

  print('----------------------');
  for (final x in names) {
    if (x == 'Mini') {
      print('Exiting loop break encountered....');
      break; // exit for loop
    }
    print(x);
  }

  print('--------------------');
  for (final x in names.reversed) {
    print(x);
  }

  print('--------------------');

  for (int val in Iterable.generate(20)) {
    print(val);
  }
}
