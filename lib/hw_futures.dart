import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';
import 'package:dart_async_homework/homeworks/lesson_11/task_2.dart';

void main() async {
  final Stopwatch stopwatch = Stopwatch();
  stopwatch.start();

  await fetchName().then((name) {
    print('Мене звати $name');
  });

  stopwatch.stop();
  print('Час виконання запиту на ім\'я: ${stopwatch.elapsedMilliseconds} мс');

  stopwatch.reset();
  stopwatch.start();
  final ageString = await getAgeString();
  print('Мені $ageString');

  stopwatch.stop();
  print('Час виконання запиту на вік: ${stopwatch.elapsedMilliseconds} мс');
}
