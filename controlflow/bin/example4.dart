// while loop
void main(List<String> args) {
  const names = <String>['Raya', 'Kiki', 'Shiro', 'Batman'];
  int count = 0;
  while (count < names.length) {
    print(names[count++]);
  }

  print('----------------------');
  count = -1;

  while (++count < names.length) {
    print(names[count]);
  }

  print('----------------------');
  count = 0;
  do {
    print(names[count++]);
  } while (count < names.length);
}
