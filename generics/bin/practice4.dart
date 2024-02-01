bool isEqualType<T, R>(T item1, R item2) {
  // print(R.runtimeType);  // this will print Type
  // return R.runtimeType == T.runtimeType;  // it will always return True, AS Type== Type

  if (item1 is int && item2 is int) {
    return true;
  } else if (item1 is double && item2 is double) {
    return true;
  } else if (item1 is String && item2 is String) {
    return true;
  } else {
    return false;
  }
}

void main() {
  int a = 10;
  double b = 11.2;
  int c = 11;
  String myStr = "Hello Shiro";
  print(isEqualType(a, b));
  print(isEqualType(a, myStr));
  print(isEqualType(a, c));
}
