// return value from function

int addInt([int a = 0, int b = 1]) {
  return a + b;
}

void main(List<String> args) {
  print(addInt());
  print(addInt(5));
  print(addInt(2, 3));
}
