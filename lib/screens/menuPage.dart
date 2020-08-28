import 'package:flutter/material.dart';
import 'package:Xylophone78/components/routeButton.dart';
import 'package:Xylophone78/components/titleGradient.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: TitleGradient(
                title: 'Xylophone78',
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 30.0),
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RouteButton(
                      buttonBGcolor: Colors.red,
                      buttonTextcolor: Colors.blueGrey[800],
                      buttonTitle: 'Xylophone7',
                      noteNumber: 1,
                      routeName: '/xylo7'),
                  RouteButton(
                      buttonBGcolor: Colors.orange,
                      buttonTextcolor: Colors.blueGrey[800],
                      buttonTitle: 'Xylophone8',
                      noteNumber: 2,
                      routeName: '/xylo8'),
                  RouteButton(
                      buttonBGcolor: Colors.yellow,
                      buttonTextcolor: Colors.blueGrey[800],
                      buttonTitle: 'Tracks',
                      noteNumber: 3,
                      routeName: '/test'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
