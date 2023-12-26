/*
    Numbers (int, double)
    Strings (String)
    Booleans (bool)
    Records ((value1, value2))
    Lists (List, also known as arrays)
    Sets (Set)
    Maps (Map)
    Runes (Runes; often replaced by the characters API)
    Symbols (Symbol)
    The value null (Null)

 */

/*
Records:
Records are an anonymous, immutable, aggregate type. Like other collection types,
they let you bundle multiple objects into a single object. Unlike other collection types,
records are fixed-sized, heterogeneous, and typed.
Example:
var record = ('first', a: 2, b: true, 'last');
Record rec = ('first', a: 2, b: true, 'last');

Two records are equal when they meet two conditions:

    Have the same set of fields, a.k.a the same shape.
    Their corresponding fields have the same values.

 */

// Records allow functions to return multiple values bundled together
(String, int) record_return() {
  return ("Hello", 1);
}


void record_test() {
  var myrec = (1, 2, 'hello', a:10);
  // one can access record element using position  or using name if exists
  print(myrec.$1);
  print("${myrec.a}");

  // Defining type of each field
  (int, double) myrec1 = (1, 2.5);
  print("myrec1 -> ${myrec1.$1}, ${myrec1.$2}");

  // one can also name the field with type
  ({int a, double b}) myrec2 = (a:3, b:3.14);
  print("${myrec2.a}");

  var (name, num) = record_return();
  print("$name, $num");
  // Equivalent to below
  /*
  var info = record_return();
  var name = info.$1;
  var num = info.$2;
   */
}

void print_list(List<Object> mylist) {
  // for loop
  for(var item in mylist) {
    print(item);
  }

  // for each loop
  print("Using foreach");
  mylist.forEach((element) {
    print(element);
  });
}

void list_test() {
  List<String> mylist = ["mini", "coco", "dora", "oreo"];
  mylist.add("shiro");
  print(mylist);
  print("Length -> ${mylist.length}");

  var mylist1 = [1, 2, 3, "hello", 3.2];
  print(mylist1);
  print_list(mylist1);

  print(mylist.reversed);
}

void map_test() {
  Map<String, int> mymap = {'a':1, 'b':2};
  mymap.forEach((key, value) {
    print("$key -> $value");
  });

  print("keys -> ${mymap.keys}");
  print("values -> ${mymap.values}");
  assert(mymap.containsKey('a') == true);
  print("a is present");

  // get key value
  print(mymap['a']);
  // print(mymap['k']);  this will raise key error as key k is not present
  print(mymap.putIfAbsent('k', (){return 99;}));
  print(mymap.putIfAbsent('k', () => 99));
}

/*
A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set
 */
void set_test() {
  Set<int> myset = {1,2,3,4,5};
  print("length -> myset.length");

}

void main() {
  // record_test();

  // list_test();

  map_test();

  // set_test();
}