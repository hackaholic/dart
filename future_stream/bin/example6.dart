void main(List<String> args) async {
  // int sum = 0;
  // await for(final n in getAllAges()) {
  //   sum+=n;
  // }
  // print(sum);

  print(await getAllAges().reduce((previous, element) => previous + element));
  print(await getAllAges().reduce(add));
}

int add(int a, int b) => a+b;

Stream<int> getAllAges() async *{
  for(final i in [10,20,30,40,50]) {
    yield i;
  }
}