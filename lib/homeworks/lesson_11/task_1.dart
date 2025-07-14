Future<String> fetchName() {
  return Future.delayed(Duration(seconds: 2), () => 'Андрій');
}
