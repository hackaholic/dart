import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or type exit: ');
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

    switch (input.toLowerCase()) {
      case 'coco':
      case 'shiro':
        stdout.writeln('Hello $input, you are white');
        break;
      case 'dora':
        stdout.writeln('Hello $input, you are Calico');
        break;
      case 'oreo':
        stdout.writeln('Hello $input, you are siberian');
        break;
      case 'niko':
        stdout.writeln('Hello $input, you are lardona');
        break;
      default:
        stdout.writeln('Hello $input');
        break;
    }
  } while (true);
}
