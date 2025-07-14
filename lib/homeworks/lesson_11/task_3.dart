import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';
import 'package:dart_async_homework/homeworks/lesson_11/task_2.dart';

Future sequentialExecution() async {
  final Stopwatch stopwatch = Stopwatch();

  stopwatch.start();
  final String name = await fetchName();
  stopwatch.stop();
  print('Мене звати ${name}');
  print('Час виконання запиту імені: ${stopwatch.elapsedMilliseconds} мс');

  stopwatch.reset();
  stopwatch.start();
  final String age = await getAgeString();
  stopwatch.stop();
  print('Мені ${age}');
  print('Час виконання запиту віку: ${stopwatch.elapsedMilliseconds} мс');
}
