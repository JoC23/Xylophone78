import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone7 extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('notes7/note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber, String note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$note',
            style: TextStyle(
              color: Colors.black,
            )),
        padding: EdgeInsets.all(0.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red, soundNumber: 1, note: 'C'),
            buildkey(color: Colors.orange, soundNumber: 2, note: 'D'),
            buildkey(color: Colors.yellow, soundNumber: 3, note: 'E'),
            buildkey(color: Colors.green, soundNumber: 4, note: 'F'),
            buildkey(color: Colors.cyan, soundNumber: 5, note: 'G'),
            buildkey(color: Colors.blue[700], soundNumber: 6, note: 'A'),
            buildkey(color: Colors.purple, soundNumber: 7, note: 'B'),
          ],
        ),
      ),
    );
  }
}
