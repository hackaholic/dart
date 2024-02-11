import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;

void main(List<String> args) async {
  final String uri = 'https://dummyjson.com/products/add';
  final url = Uri.parse(uri);
  final myHttpClient = retry.RetryClient(http.Client(), retries: 3);

  // create headers
  final Map<String, String> headers = {'Content-Type': 'application/json'};

  //create body

  final data = convert.jsonEncode({'title': 'BMW Pencil'});
  try {
    final response = await myHttpClient.post(
      url,
      headers: headers,
      body: data,
      encoding: convert.utf8,
    );
    print(response.statusCode);
  } catch (e) {
    print('Error: $e');
  }
}
