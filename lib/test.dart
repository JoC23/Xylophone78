import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:time/time.dart';
import 'package:audioplayers/audioplayers.dart';
import 'comp/trackButton.dart';
import 'comp/titleGradient.dart';

const String kNotesHBday = 'CCDCFE CCDCGF CCBAGFE FFGEGF';
const String kNotesTwinkle = 'CCGGAAG FFEEDDC GGF EED GGFFEED';
const String kNotesYeahRight = 'EGGE AGEEE GEGC';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  AudioCache cache;
  AudioPlayer player;

  Future<void> playSound(int soundNumber) async {
    if (cache != null) {
      player = await cache.play('notes7/note$soundNumber.wav');
    }
  }

  Future<void> trackDelay(int millisecs) async {
    if (cache != null) {
      await millisecs.milliseconds.delay;
    }
  }

  Future<void> stopTrack() async {
    cache = null;
    // minimum 820ms delay is required for single track play
    // Need more research
    await 820.milliseconds.delay;
  }

  void happyBirthday() async {
    // 112143 112154 1176432 665354
    cache = null;
    await stopTrack();
    cache = new AudioCache();
    playSound(1);
    await trackDelay(500);
    playSound(1);
    await trackDelay(500);
    playSound(2);
    await trackDelay(1000);
    playSound(1);
    await trackDelay(1000);
    playSound(4);
    await trackDelay(1000);
    playSound(3);
    await trackDelay(1800);

    playSound(1);
    await trackDelay(500);
    playSound(1);
    await trackDelay(500);
    playSound(2);
    await trackDelay(1000);
    playSound(1);
    await trackDelay(1000);
    playSound(5);
    await trackDelay(1000);
    playSound(4);
    await trackDelay(1800);

    playSound(1);
    await trackDelay(500);
    playSound(1);
    await trackDelay(500);
    playSound(7);
    await trackDelay(1000);
    playSound(6);
    await trackDelay(1000);
    playSound(4);
    await trackDelay(1000);
    playSound(3);
    await trackDelay(1000);
    playSound(2);
    await trackDelay(1800);

    playSound(6);
    await trackDelay(500);
    playSound(6);
    await trackDelay(500);
    playSound(5);
    await trackDelay(1000);
    playSound(3);
    await trackDelay(1000);
    playSound(5);
    await trackDelay(1000);
    playSound(4);
    await trackDelay(2000);
  }

  void yeahRight() async {
    // 3553 65333 5351
    cache = null;
    await stopTrack();

    cache = new AudioCache();
    playSound(3);
    await trackDelay(1000);
    playSound(5);
    await trackDelay(400);
    playSound(5);
    await trackDelay(500);
    playSound(3);
    await trackDelay(1600);

    playSound(6);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(3);
    await trackDelay(350);
    playSound(3);
    await trackDelay(1000);

    playSound(5);
    await trackDelay(350);
    playSound(3);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(1);
    await trackDelay(1000);
  }

  void twinkleTwinkle() async {
    // 1155665 4433221 554 332 5544332
    cache = null;
    await stopTrack();

    cache = new AudioCache();
    playSound(1);
    await trackDelay(500);
    playSound(1);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(6);
    await trackDelay(500);
    playSound(6);
    await trackDelay(500);
    playSound(5);
    await trackDelay(1000);

    playSound(4);
    await trackDelay(500);
    playSound(4);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(2);
    await trackDelay(500);
    playSound(2);
    await trackDelay(500);
    playSound(1);
    await trackDelay(1000);

    playSound(5);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(4);
    await trackDelay(1000);

    playSound(3);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(2);
    await trackDelay(1000);

    playSound(5);
    await trackDelay(500);
    playSound(5);
    await trackDelay(500);
    playSound(4);
    await trackDelay(500);
    playSound(4);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(3);
    await trackDelay(500);
    playSound(2);
    await trackDelay(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 6, child: TitleGradient(title: 'Tracks')),
            Expanded(
              flex: 10,
              child: Column(
                children: <Widget>[
                  TrackButton(
                    buttonBGcolor: Colors.red,
                    buttonTextcolor: Colors.blueGrey[800],
                    buttonTitle: 'Happy Birthday',
                    trackNotes: '>Notes: $kNotesHBday',
                    playTrack: () {
                      happyBirthday();
                    },
                  ),
                  TrackButton(
                    buttonBGcolor: Colors.orange,
                    buttonTextcolor: Colors.blueGrey[800],
                    buttonTitle: 'Twinkle Twinkle Little Star',
                    trackNotes: '>Notes: $kNotesTwinkle',
                    playTrack: () {
                      twinkleTwinkle();
                    },
                  ),
                  TrackButton(
                    buttonBGcolor: Colors.yellow,
                    buttonTextcolor: Colors.blueGrey[800],
                    buttonTitle: 'Yeah Right(Joji)',
                    trackNotes: '>Notes: $kNotesYeahRight',
                    playTrack: () {
                      yeahRight();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.red[900],
                      textColor: Colors.white,
                      onPressed: () {
                        stopTrack();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Stop',
                            // style: TextStyle(),
                          ),
                          Icon(Icons.stop),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.green[800],
                      textColor: Colors.white,
                      onPressed: () {
                        // TODO add track
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Add Track(TODO)',
                            // style: TextStyle(),
                          ),
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
