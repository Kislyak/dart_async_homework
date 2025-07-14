Future<void> streamOfNumbers() async {
  Stream<int> numbersStream = Stream.fromIterable([1, 2, 3, 4, 5]);

  print('Виведення stream (await for):');
  await for (int number in numbersStream) {
    print(number);
  }

  print('Виведення stream (listen):');
  numbersStream.listen((number) {
    print(number);
  });
}
