import 'dart:io';

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
