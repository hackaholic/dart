extension on int {
  int get timesFour => this * 4;
}

extension on String {
  String get reversed => split('').reversed.join();
}

void main(List<String> args) {
  final val = 20;
  final timesFour = val.timesFour;
  print('$val, $timesFour');

  print('--------------------');
  print('Hello'.reversed);
}
