void main(List<String> args) {
  final str = 'abracadabra';
  var result = '';
  for (var x in str.split('')) {
    if (x == 'a' || x == 'b' || x == 'c') {
    } else {
      result += x;
    }
  }
  print('---------------------');
  print(result);

  print('---------------------');
  // set comprehension
  final allExpectAbc = {
    for (final char in str.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>;

  print(allExpectAbc);

  print('---------------------');
  final allNum = Iterable.generate(10);
  // list comprehension ->  produces list
  final evenNum = [
    for (final x in allNum)
      if (x % 2 == 0) x
  ];

  //  functional produces iterables
  final oddNum = allNum.where((element) => element % 2 != 0);
  print(evenNum);
  print(oddNum);

  // map comprehension
  final names = [
    'John Doe',
    'James Smith',
    'Alice Jones',
  ];

  final namesAndLengths = {for (final x in names) x: x.length};

  print(namesAndLengths);
}
