import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';

void main() {
  fetchName().then((name) {
    print('Мене звати $name');
  });
}
