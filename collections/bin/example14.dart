import 'package:collection/collection.dart';

void testBoolList() {
  final boolList = BoolList(5, growable: true);
  print(boolList);

  boolList[3] = true;
  if (boolList[3]) {
    print('The bool value at index 3 is true');
  } else {
    print('The bool value at index 3 is false');
  }

  boolList.length *= 2;
  print(boolList);
}

/*
In mathematics and computer science, a canonical, normal, or standard form of a
mathematical object is a standard way of presenting that object as a mathematical expression. 
Often, it is one which provides the simplest representation of an object and 
allows it to be identified in a unique way
*/
void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'bla': 'bla',
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  print(canonMap);
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];

  var combined = CombinedIterableView([one, two, three]);
  print(combined);
  two.add(40);
  print(combined);
  print(combined.length);
}

void combineListView() {
  // CombinedListView is a view of a list of lists, and its readOnly
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];

  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);

  print(names);
  swedishNames.removeAt(0);
  print(names);

  try {
    names.add('Hanuman');
  } catch (e) {
    print(e);
  }
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  //  CombinedMapView is unmodifiable
  final combinedMap = CombinedMapView([map1, map2, map3]);
  print(combinedMap);

  map2['lol'] = 99;
  print(combinedMap);

  try {
    combinedMap['k'] = -1;
  } catch (e) {
    print(e);
  }
}

void testMapMerging() {
  const info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };
  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };

  final merge = mergeMaps(info1, info2);
  print(merge);
  merge['lol'] = 'lol';
  print(merge);

  final merge1 = mergeMaps(info1, info2, value: (p0, p1) => p0);
  print(merge1);
}

void main(List<String> args) {
  testBoolList();

  print('-------------------------');
  testCanonicalizedMap();

  print('-------------------------');
  testCombinedIterableView();

  print('-------------------------');
  combineListView();

  print('-------------------------');
  testCombinedMapView();

  print('-------------------------');
  testMapMerging();
}
