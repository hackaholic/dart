import 'dart:core';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart' as retry;

void main(List<String> args) {
  final stopwatch = Stopwatch()..start();

  final String url = 'https://dummyjson.com/products';
  final uri = Uri.parse(url);

  final retry.RetryClient http_client = retry.RetryClient(http.Client(),
      retries: 3, delay: (_) => const Duration(seconds: 3));

  late final response;
  try {
    response = http_client.get(uri).then((response) {
      if (response.statusCode == 200) {
        print('I am from inside then callback.....');
      } else {
        throw Exception('Failed to fetch: ${response.statusCode}');
      }
    });

    print("I am before: $response}");
  } catch (e) {
    print('Error: $e');
  }

  print('End of time....');
  stopwatch.stop();
  print('Elapsed time: ${stopwatch.elapsed}');
}
