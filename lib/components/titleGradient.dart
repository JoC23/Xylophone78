import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:Xylophone78/constants.dart';

class TitleGradient extends StatelessWidget {
  TitleGradient({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

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
            gradient: LinearGradient(colors: kgradientColorList),
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
