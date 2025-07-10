Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Андрій';
}
