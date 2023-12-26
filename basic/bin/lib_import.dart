import 'package:http/http.dart' as http;

import 'package:http/http.dart' show get;   // only import a part of library

// Import all names EXCEPT foo.
// import 'package:test/test.dart hide foo;

// import from lib
import 'package:basic/basic.dart' as basic;

//  import from dart file

import 'display.dart';

void main() async {
  print(display());
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  var response = await get(url);
  if(response.statusCode == 200) {
    print(response.body);
  }
  else {
    print("Error");
  }
}