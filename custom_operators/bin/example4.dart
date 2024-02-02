// 'foo bar foo bar foo bar' - 'foo'
// -> 'bar bar bar'

extension Remove on String {
  String operator -(String other) => replaceAll(other, '');
}

void main(List<String> args) {
  print('bar' - 'bar');
  print('foo bar' - 'bar');
  print('foo bar foo bar foo bar' - 'foo');
  print('foo bar' - 'baz');
}
