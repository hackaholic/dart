int subInt([int a = 0, int b = 1]) => a - b;
int addInt([int a = 0, int b = 1]) => a + b;

int performOperation(int a, int b, int Function(int, int) oper) => oper(a, b);

void main(List<String> args) {
  print(subInt());
  print(subInt(5));
  print(subInt(9, 6));

  performOperation(10, 20, subInt);
  performOperation(30, 40, (p0, p1) => p0 * p1);
  performOperation(-2, 90, addInt);
}
