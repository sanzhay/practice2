Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<void> main(List<String> args) async {
  final a = await sum(5, 10);
  print(a);

  final b = await sum(a, 10);
  print(b);
}

Stream<int>? stream;
