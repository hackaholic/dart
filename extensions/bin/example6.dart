// extension on enum

/*

In Dart, enums are special classes that have some implicit properties and methods. Here are the key properties and methods associated with enums in Dart:

    Name Property:
        Type: String
        Description: Returns the string representation of the enum's identifier.
    Index Property:
    Type: int
    Description: Returns the zero-based index of the enum value in its declaration.

    
*/
enum AnimalType { cat, dog, goldFish }

extension on Enum {
  bool get anyUpperCase => name.contains(RegExp(r'[A-Z]'));
}

void main(List<String> args) {
  //AnimalType.cat.anyUpperCase;
  print(AnimalType.cat.anyUpperCase);
  print(AnimalType.goldFish.anyUpperCase);
}
