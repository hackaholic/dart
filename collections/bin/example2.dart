import 'package:collection/collection.dart';

/*
 add the above collection package to dart
 dart pub add collection
*/

void main(List<String> args) {
  // set collection
  final names = {'Dora', 'Coco', 'Mini', 'Ginger'};
  print(names);

  print('---------------------');
  final names2 = ['Dora', 'Coco', 'Mini', 'Ginger', 'Mini'];
  final uniqueNames = {names2, names, names2};
  print(uniqueNames);

  // spread operator: Dart supports the spread operator (...) and the null-aware
  // spread operator (...?) in list, map, and set literals. Spread operators
  //provide a concise way to insert multiple values into a collection.
  final uniqueNames2 = {...names, ...names2};
  print(uniqueNames2);

  print('---------------------');
  final foo1 = 'Foo';
  final foo2 = 'Foo';
  final foo3 = 'foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print(foo3.hashCode);

  print('---------------------');

  final age1 = {10, 20, 30};
  final age2 = {10, 20, 30};
  if (age1 == age2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal'); // this will get printed
  }

  print('---------------------');
  // SetEqualitity does comparision irrespective of the order of elelment
  if (SetEquality().equals(age1, age2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('---------------------');
  final age3 = {20, 30, 10};
  if (SetEquality().equals(age1, age3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
