/*
A future (lower case “f”) is an instance of the Future (capitalized “F”) class.
A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.


    A Future<T> instance produces a value of type T.
    If a future doesn’t produce a usable value, then the future’s type is Future<void>.
    A future can be in one of two states: uncompleted or completed.
    When you call a function that returns a future, the function queues up work to be done and returns an uncompleted future.
    When a future’s operation finishes, the future completes with a value or with an error.

 */

import 'dart:io';
import 'package:http/http.dart' as http;

Future<String> getUserName() => Future.delayed(Duration(seconds: 5), () => 'Hackaholic');

Future<void> getData() async {
  print("Fetching data ...");
  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
    var res = await http.get(url);
    if (res.statusCode == 200) {
      print(res.body);
    }
  } catch (err) {
    print(err);
  }
}

void main() {
  print("Start...");
  getUserName().then((value) => print(value));
  getData();
  print("End...");
}