import 'dart:convert' as convert;
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;

void main(List<String> args) async {
  final url = Uri.parse('https://dummyjson.com/products');
  var data;
  try {
    // creates a retry client
    final client = retry.RetryClient(http.Client(),
        retries: 3,
        when: (e) => e is SocketException,
        delay: (_) {
          return const Duration(seconds: 2);
        });

    final response = await client.get(url);
    if (response.statusCode == 200) {
      data = convert.jsonDecode(response.body);
      print(data['products']?.length);
    } else {
      print("httpError-> ${response.statusCode}");
      data = null;
    }
  } catch (e) {
    print('Error:  $e');
  }

  // get me all products which has rating more than 4.5

  final ratingMoreThanFour = ((data['products'] ?? []) as List<dynamic>)
      .where((e) => (e['rating'] ?? 0) > 4.5)
      .map((e) {
    e.addAll({'quality': 'best'});
    return e;
  });

  print(ratingMoreThanFour.length);
  for (var p in ratingMoreThanFour) {
    print(p['quality']);
    print('\n');
  }
}
