import 'dart:convert' as convert;
import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:collection/collection.dart';

void main(List<String> args) async {
  final url = Uri.parse('https://dummyjson.com/products');
  final response = await http.get(url);
  var payload = {};
  if (response.statusCode == 200) {
    payload = convert.jsonDecode(response.body);
    print(payload.keys);
    print(payload.runtimeType);
    //print(payload);
  } else {
    print(response.statusCode);
  }
  //  group product based on category
  var category =
      groupBy(payload['products'] as List<dynamic>, (e) => e['category']);
  for (var k in category.entries) {
    print('${k.key} -> ${k.value.length}');
  }
}
