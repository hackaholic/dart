// traditional for loops
void main(List<String> args) {
  const names = <String>['Coco', 'Mini', 'Dora'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('Backward...............');
  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }
}
