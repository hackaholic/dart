class Box<T, R> {
  final T width;
  final T height;
  final T breadth;
  late R value;

  // Constructor
  Box({required this.width, required this.height, required this.breadth});

  // Method to set the value in the box
  set setValue(R val) => value = val;

  // Method to get the value from the box
  R get getValue => value;
}

void main() {
  Box<double, String> box = Box(width: 10, height: 3.5, breadth: 2.0);
  box.setValue = 'Hello Box';
  print(box.getValue);
}
