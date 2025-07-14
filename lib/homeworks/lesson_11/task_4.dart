import 'package:dart_async_homework/homeworks/lesson_11/task_1.dart';
import 'package:dart_async_homework/homeworks/lesson_11/task_2.dart';

Future parallelExecution() async {
  final Stopwatch stopwatch = Stopwatch();
  stopwatch.start();

  var value = await Future.wait([fetchName(), getAgeString()]);

  print('Мене звати ${value[0]}');
  print('Мені ${value[1]}');

  stopwatch.stop();
  print('Час виконання запитів: ${stopwatch.elapsedMilliseconds} мс');
}
