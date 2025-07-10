import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';
import 'package:dart_async_homework/homeworks/lesson_11/task_2.dart';

void main() async {
  await fetchName().then((name) {
    print('Мене звати $name');
  });

  await getAgeString().then((ageString) {
    print('Мені $ageString');
  });
}
