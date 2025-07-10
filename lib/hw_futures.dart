import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';

void main() async {
  await fetchName().then((name) {
    print('Мене звати $name');
  });
}
