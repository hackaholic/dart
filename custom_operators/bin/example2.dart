extension<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}

/*
The yield* statement is used to yield all values from another iterable or generator, 
effectively delegating the work to that iterable or generator.
*/

void main(List<String> args) {
  const names = ['Coco', 'Shiro', 'Mini', 'Kiki'];
  print(names * 2);
}
