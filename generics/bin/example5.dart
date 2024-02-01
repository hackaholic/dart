typedef JSON<T> = Map<String, T>;
void main(List<String> args) {
  const JSON<String> json = {'name': 'coco', 'addr': '123 Main St'};
  print(json);
}
