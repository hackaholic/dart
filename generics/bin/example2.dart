bool doMatchTypes(Object a, Object b) {
  return a.runtimeType == b.runtimeType;
}

bool doMatchTypesGeneric<T1, T2>(T1 a, T2 b) => T1 == T2;

void main(List<String> args) {
  print(doMatchTypes(1, 2));
  print(doMatchTypes(2, 2.2));
  print(doMatchTypes('foo', 2));
  print(doMatchTypes('foo', 'bar'));

  print('------------------------');
  print(doMatchTypesGeneric(1, 2));
  print(doMatchTypesGeneric(2, 2.2));
  print(doMatchTypesGeneric('foo', 2));
  print(doMatchTypesGeneric('foo', 'bar'));
}
