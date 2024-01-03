Future<void> delete_files() async =>
    await Future.delayed(Duration(seconds: 2), () => print("Files Deleted"));

Future<void> copy_files() async =>
    await Future.delayed(Duration(seconds: 3), () => print("Files Copied"));

Future<void> upgrade() async =>
    await Future.delayed(Duration(seconds: 4), () => print("OS upgraded ..."));

// Sometimes your algorithm needs to invoke many asynchronous functions and wait for them all to complete before continuing.
// Use the Future.wait() static method to manage multiple Futures and wait for them to complete:
Future<List<void>> callfutures() async {
  // return Future.wait(
  //   [
  //     delete_files(),
  //     copy_files(),
  //     upgrade()
  //   ]
  // );
  var data = [];
  try {
    data = await [delete_files(), copy_files(), upgrade()].wait;
  } on ParallelWaitError catch (e) {
    print(e.values[0]); // Prints successful future
    print(e.values[1]); // Prints successful future
    print(e.values[2]); // Prints null when the result is an error

    print(e.errors[0]); // Prints null when the result is successful
    print(e.errors[1]); // Prints null when the result is successful
    print(e.errors[2]); // Prints error
  } catch (e, s) {
    // You can specify one or two parameters to catch().
    // The first is the exception that was thrown, and the second is the stack trace (a StackTrace object).
    print('$e, $s');
  } finally {
    // To ensure that some code runs whether or not an exception is thrown, use a finally clause
    print("finally: I will get executed no matter what");
  }
  return data;
}

void main() {
  //Future<List<void>>? future_values;
  print("Inside main Starting....");
  // callfutures().whenComplete(() => print("Futures Completed ..."));
  var fut = callfutures();
  fut.whenComplete(() {
    print("Futures Completed ...");
    // future_values = fut.then((value) => value);
    fut.then((value) => print(value));
  });
  //fut.then((value) => print(value));
  print("I am working on something else ...");

  print("Main End ....");
}
