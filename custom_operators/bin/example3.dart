// void bla(int? val1, int? val2) {
//   final result = val1 + val2;
// }

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    if (this == null && other == null) {
      return 0 as T;
    } else if (this == null) {
      return other;
    } else if (other == null) {
      return this;
    } else {
      // return (this + other) as T?;   // stack overflow, this + other lead to recursive call
      return (this as T) + other as T;
    }
  }
}

int? add([int? a, int? b]) {
  return a + b;
}

void main(List<String> args) {
  int? val1;
  int? val2;

  final res = val1 + val2;
  print(res);

  print(add());
  print(add(1));
  print(add(1, 2));
}
