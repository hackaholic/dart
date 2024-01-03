// Future channing

void main(List<String> args) async {
  // final int length =  await calculateLength(await getFullName());
  // print(length);
  final int len = await getFullName().then((value) => calculateLength(value));
  print(len);
}

Future<String> getFullName() =>
    Future.delayed(const Duration(seconds: 1), () => 'Mini Sharma');

Future<int> calculateLength(String value) =>
    Future.delayed(const Duration(seconds: 1), () => value.length);
