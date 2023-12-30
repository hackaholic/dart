// Null aware operator
void main(List<String> args) {
  String? lastName;
  // print(lastName.length);
  // we have to use Null aware operator
  print(lastName?.length);

  String? nullName;
  print(nullName ?? 'Coco');
  // it will take the value from nullName if its not null else use default value given.

  var bla = nullName ?? null;
  // bla is optional string
  print(bla);

  var foo = nullName ?? 'foo';

  print(lastName ?? nullName ?? 'Kiki');
}
