extension DefaultValues<T> on T? {
  T get orDefault {
    final T? shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return 'Empty' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No Default value type $T');
    }
  }
}

String fullName(String? fName, String? lName) =>
    '${fName.orDefault} ${lName.orDefault}';

void main(List<String> args) {
  print(fullName(null, null));
  print(fullName('Raya', null));
  print(fullName(null, 'Dora'));
  print(fullName('Dora', 'Pasupati'));
}
