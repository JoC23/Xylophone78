import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class TitleGradient extends StatelessWidget {
  TitleGradient({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;
  final List<Color> gradientColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
    Colors.blue[700],
    Colors.purple,
    Colors.deepPurple
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 60.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GradientText(
            title,
            gradient: LinearGradient(colors: gradientColors),
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
            ),
          ),
        ],
      ),
    );
  }
}
