/*
when you see a function with angle brackets (<...>), 
it's typically indicating the use of generics. Generics allow you to write functions, classes, 
or methods that can work with different types while maintaining type safety.
*/

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception("Not supported type");
  }
}

void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
  final int intValue = eitherIntOrDouble();
  print(intValue);
  try {
    final something = eitherIntOrDouble();
    print(something);
  } catch (e) {
    print("Error: $e");
  }
}
