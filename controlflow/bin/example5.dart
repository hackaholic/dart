// switch

void describe<T>(T value) {
  switch (T) {
    case int:
      print("Integer");
      break;
    case double:
      print('Double');
      break;
    case String:
      print('String');
      break;
    case bool:
      print('bool');
      break;
    case const (Map<String, String>):
      print('Map');
    default:
      print('Some other data type');
      break;
  }
}

void main(List<String> args) {
  describe(false);
  describe(3.14);
  describe(29);
  describe('Hello');
  describe({'a': 'apple'});
  describe({'b': 1});
}
