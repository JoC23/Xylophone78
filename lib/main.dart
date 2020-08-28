import 'package:flutter/material.dart';
import 'package:Xylophone78/screens/menuPage.dart';
import 'package:Xylophone78/screens/xylo7.dart';
import 'package:Xylophone78/screens/xylo8.dart';
import 'package:Xylophone78/test.dart';

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
