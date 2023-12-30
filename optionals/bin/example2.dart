// if the value is null without type then dart take it as dynamic data type
void main(List<String> args) {
  const val = null;
  print(val.runtimeType);
}
