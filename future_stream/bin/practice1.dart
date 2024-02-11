/*
Write a Dart program demonstrating the use of the async keyword to mark a function as asynchronous.
*/

void main() async {
  print("async function...");
  await Future.delayed(const Duration(seconds: 2));
  print("Done....");
}
