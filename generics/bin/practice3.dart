class Pair<T extends Comparable> {
  final T first;
  final T second;

  // Constructor
  const Pair(this.first, this.second);

  int get getIsGreater => first.compareTo(second);

  /*
  When you have a generic type T that extends Comparable, you can safely use compareTo to compare instances of T. 
  However, the > and < operators may not work directly.
  */

  // bool get isGreater => first > second;
}

void main() {
  Pair<int> pair1 = Pair(5, 3);
  print(pair1.getIsGreater);
  Pair<double> pair2 = Pair(3.14, 5.6);
  print(pair2.getIsGreater);
}
