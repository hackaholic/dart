import 'dart:async';
import 'calculate.dart' as cal;
void main() {
  print("hello world ${cal.calculate()}");
  Future.delayed(Duration(seconds: 5));
}