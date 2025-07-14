import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';
import 'package:dart_async_homework/homeworks/lesson_11/task_2.dart';

Future parallelExecution() async {
  final Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  var value = await Future.wait([fetchName(), getAgeString()]);
  stopwatch.stop();

  print('Мене звати ${value[0]}');
  print('Мені ${value[1]}');

  print('Час виконання запитів: ${stopwatch.elapsedMilliseconds} мс');
}
