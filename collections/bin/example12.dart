void addToArrayWrong() {
  final num1 = [1, 2, 3, 4];
  final num2 = [5, 6, 7, 8];
  final allNum = num1; // reference is same
  assert(identical(num1, allNum)); // return true

  allNum.addAll(num2);
  print(num1);
  print(num2);
  print(allNum);
}

void addToArrayRight() {
  final num1 = [1, 2, 3, 4];
  final num2 = [5, 6, 7, 8];
  // use spread operator
  final allNum = [...num1, ...num2];

  /*
  the .. operator is called the cascade operator. It allows you to perform a 
  sequence of operations on the same object.
  */
  final anotherWay = [...num1]..addAll(num2);
  print(num1);
  print(num2);
  print(allNum);

  print(anotherWay);
}

void addToDictWrong() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = info; // same reference
  try {
    result.addAll({'weight': 80});
  } catch (e) {
    print(e);
  }
}

void addToDictRight() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {...info}..addAll({'weight': 80});
  print(result);
}

void main() {
  print('-----------------------');
  addToArrayWrong();
  print('-----------------------');
  addToArrayRight();
  print('-----------------------');
  addToDictWrong();
  print('-----------------------');
  addToDictRight();
}
