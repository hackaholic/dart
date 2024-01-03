// check if Iterables contains duplicates

/*

In Dart, when you are creating an extension and explicitly specifying the type it extends, 
you don't need to include a generic type parameter in the extension name
*/
extension on Iterable {
  bool get isDuplicates => toSet().length != length;
}

void main(List<String> args) {
  print([1, 2, 3].isDuplicates);
  print([1, 2, 3, 1].isDuplicates);
  print(['Coco', 'Mini'].isDuplicates);
  print(['Ginger', 'Shiro', 'Ginger'].isDuplicates);
  print(['Mini', 'Raya', 'Mini'].isDuplicates);
}
