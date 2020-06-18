import 'package:Xylophone78/menu.dart';
import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:Xylophone78/xylo7.dart';
import 'package:Xylophone78/xylo8.dart';
import 'test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        '/xylo7': (context) => Xylophone7(),
        '/xylo8': (context) => Xylophone8(),
        '/test': (context) => Test(),
      },
      home: MyMenu(),
    );
  }
}
