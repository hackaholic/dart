import 'dart:collection';

class SafeList<T> extends ListBase {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList(
      {required this.defaultValue, required this.absentValue, List<T>? value})
      : _list = value ?? [];

  @override
  int get length => _list.length;

  @override
  set length(int newLen) {
    if (newLen <= length) {
      _list.length = newLen;
    } else {
      _list.addAll(List.filled(newLen - length, defaultValue));
    }
  }

  @override
  operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) => _list[index] = value;

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}

void main(List<String> args) {
  final List<String> names = [];

  print('-----------------------');
  try {
    print(names.first);
  } catch (e) {
    print(e);
  }

  print('-----------------------');
  const notFound = 'NOT_FOUND';
  const defaultString = null;

  final SafeList myList = SafeList(
      defaultValue: defaultString,
      absentValue: notFound,
      value: ['Raya', 'Kiki', 'Dora', 'Mini']);
  print(myList[0]);
  print(myList[10]);

  myList.length = 10;
  print(myList);

  myList.length = 0;
  print(myList.first);
  print(myList.last);
}
