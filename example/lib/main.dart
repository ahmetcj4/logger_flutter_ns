import 'package:flutter/material.dart';
import 'package:logger_flutter_ns/logger_flutter_ns.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Logger Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExampleView(),
      );
}

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LogConsoleOnShake(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Logger example'),
          ),
          body: Center(
            child: Column(
              children: [
                Text(
                  'Shake your device to see log console, you can also see console on ide console',
                ),
                TextButton(
                  onPressed: () => logger.i('pressed button'),
                  child: Text('Trigger log'),
                ),
              ],
            ),
          ),
        ),
      );
}
