import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'components/routeButton.dart';
import 'components/titleGradient.dart';

class MyMenu extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('notes7/note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Expanded(
                flex: 3,
                child: TitleGradient(
                  title: 'Xylophone78',
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
