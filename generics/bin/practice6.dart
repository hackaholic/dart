T merge<T, R>(T item1, T item2) {
  if (item1 is num && item2 is num) {
    return item1 + item2 as T;
  } else if (item1 is num && item2 is String) {
    return '$item1 $item2' as T;
  } else {
    return '$item1 $item2' as T;
  }
}

void main(List<String> args) {
  print(merge(1, 2));
  print(merge(3.14, 5.6));
  print(merge('Hello', 2));
  print(merge('coco', 'Coco'));
}
