import 'dart:async';

void useStreamController() {
  StreamController<String> controller = StreamController<String>();

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');
  controller.add('Controller');

  controller.close();

  controller.stream
      .listen((data) {
        print(data);
      })
      .onDone(() {
        print('Stream завершено');
      });

  print('StreamController використано');
}
