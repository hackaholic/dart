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
void countsec(int a) async{
  print("I am countsec waiting $a sec");
  //Future.delayed(Duration(seconds: a), () => print("countsec Delayed ...."));
  sleep(Duration(seconds: a));
  print("ok");
}

Future<void> fetch_user(int a) async {
  print("I am fetch_user ...");
  return Future.delayed(Duration(seconds: a), () => print("hello user"));
}

void main() async {
  const int a = 5;
  const int b = 2;
  countsec(a);
  // all the instruction before await executes immediately
  // await fetch_user(a);
  fetch_user(b);
  print("Before Fetch User");
}