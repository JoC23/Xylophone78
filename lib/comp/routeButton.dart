import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class RouteButton extends StatelessWidget {
  RouteButton(
      {@required this.buttonBGcolor,
      @required this.buttonTextcolor,
      @required this.buttonTitle,
      @required this.noteNumber,
      @required this.routeName});

  final Color buttonBGcolor;
  final Color buttonTextcolor;
  final int noteNumber;
  final String routeName;
  final String buttonTitle;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('notes7/note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ButtonTheme(
        height: 70.0,
        minWidth: 300.0,
        child: RaisedButton(
          color: buttonBGcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () {
            playSound(noteNumber);
            Navigator.pushNamed(context, routeName);
          },
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: buttonTextcolor,
              fontSize: 30.0,
              fontFamily: 'Lobster',
            ),
          ),
        ),
      ),
    );
  }
}
