Future<void> periodicStream(int numbersCount) async {
  Stream<int> numbersStream = Stream.periodic(
    Duration(seconds: 1),
    (count) => numbersCount - count,
  ).take(numbersCount);

  print('Виведення stream:');
  numbersStream.listen((number) {
    print('$number...');
  });
}
