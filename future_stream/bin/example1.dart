void main(List<String> args) async{
  print(getUserName());
  print(await getUserName()); //  consume the future using await
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getUserName() async {
  return "Coco";
}
Future<String> getAddress() => Future.value('123 Main St.');

Future<String> getPhoneNumber() =>
    Future<String>.delayed(const Duration(seconds: 1),
        () => '999-999-9999'
    );

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Ney York";
}

Future<String> getCountry() async => 'India';

Future<String> getZipCode() /*async*/ => Future.delayed(
  const Duration(seconds: 5),
    () => '12345'
);

