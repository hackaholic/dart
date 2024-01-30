import 'dart:io';

/*
The syntax variable?.method is known as the "null-aware" or "conditional" access operator in Dart.
If variable is not null, then variable.method is executed, and the result is returned.
If variable is null, the entire expression evaluates to null without attempting to invoke method on a null object.

*/
void main(List<String> args) {
  do {
    stdout.write('Enter your age or type exit: ');
    final input = stdin.readLineSync();
    print(input);
    if (input == 'exit') {
      print('You typed exit, aborting....');
      break;
    } else if (input?.isEmpty ?? false) {
      stdout.writeln('invalid, try again');
      continue;
    } else if (input == null) {
      stdout.writeln('Null input');
      continue;
    }

    final age = int.tryParse(input);
    if (age == null) {
      print('Invalid Age, try again.....');
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln('you are 10 years old');
        break;
      case 20:
        stdout.writeln('you are 20 years old');
        break;
      case 30:
        stdout.writeln('you are 30 years old');
        break;
      default:
        stdout.writeln('you are $age years old');
        break;
    }
  } while (true);
}
