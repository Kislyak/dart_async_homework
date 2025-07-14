Future<String> fetchAge() {
  return Future.delayed(Duration(milliseconds: 1500), () => '25');
}

Future getAgeString() async {
  final String age = await fetchAge();
  final String formattedAge = formatAge(int.parse(age));
  return formattedAge;
}

String formatAge(int age) {
  int lastDigit = age % 10;
  int lastTwoDigits = age % 100;

  if (lastTwoDigits >= 11 && lastTwoDigits <= 14) {
    return '$age років';
  }

  if (lastDigit == 1) {
    return '$age рік';
  } else if (lastDigit >= 2 && lastDigit <= 4) {
    return '$age роки';
  } else {
    return '$age років';
  }
}
