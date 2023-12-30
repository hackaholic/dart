void main(List<String> args) {
  String? getFullNameOptional(String? name) {
    return name;
  }

  String getFullName() {
    return 'Coco';
  }

  final String fullName = getFullNameOptional(null) ?? getFullName();
  print(fullName);

  final someName = getFullNameOptional('Coco');
  someName.describe();

  final nullName = getFullNameOptional(null);
  nullName.describe();
}

// Extending Optional Types;
extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("This Object is null");
    } else {
      print('$runtimeType is $this');
    }
  }
}
