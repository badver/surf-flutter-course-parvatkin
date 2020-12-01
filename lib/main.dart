import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MyFirstStatefulWidget(),
    );
  }
}

class MyFirstStatelessWidget extends StatelessWidget {
  int buildsCount = 0;

  MyFirstStatelessWidget() {
    print('StateLess constructor call'); // вызывается постоянно
  }

  @override
  Widget build(BuildContext context) {
    buildsCount++;
    print(buildsCount); // всегда выводит 1 потому что виджет пересоздается и переменная инициируется заново

    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  MyFirstStatefulWidget() {
    print('StateFull constructor call'); // вызывается постоянно
  }

  @override
  _MyFirstStatefulWidgetState createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  int buildsCount = 0;

  _MyFirstStatefulWidgetState() {
    print('State constructor call'); // вызывается 1 раз
  }

  @override
  Widget build(BuildContext context) {
    buildsCount++;
    print(buildsCount); // выводит номер перерисовки начиная с 1, потому что стейт не пересоздается

    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
