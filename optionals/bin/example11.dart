// unwrapping multiple values

// List<T?> -> can be anything optional, like List<String?>, List<int?>, etc...

T? withALL<T>(List<T?> optionals, T Function(List<T?>) callback) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

// String? withALL<String>(List<String?> optionals, String Function(List<String>) callback) =>
//     optionals.any((e) => e == null) ? null : callback(optionals.cast<String>());

String getFullname(String? firstName, String? lastName) =>
    withALL([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';

void main(List<String> args) {
  print(getFullname(null, null));
  print(getFullname('Coco', null));
  print(getFullname(null, 'Niko'));
  print(getFullname('Shiro', 'Gopalan'));
}
