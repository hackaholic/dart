import 'dart:mirrors';

class Container<T> {
  T? _value;

  //Container(this._value);

  set value(T val) => _value = val;

  T get value => _value ?? 0 as T;

  void printType() {
    if (_value == null) {
      print(null);
    } else {
      print(reflect(value).type.reflectedType);
    }
  }
}

void main(List<String> args) {
  Container con = Container();
  con.value = 20;
  print(con.value);
  con.printType();
  print('----------------');
  con.value = 'Hello Dart';
  print(con.value);
  con.printType();

  print('----------------');
  con.value = null;
  print(con.value);
  con.printType();
}
