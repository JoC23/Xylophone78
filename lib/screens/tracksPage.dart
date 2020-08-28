import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:math';
import 'package:Xylophone78/constants.dart';
import 'package:Xylophone78/components/trackButton.dart';
import 'package:Xylophone78/components/titleGradient.dart';
import 'package:Xylophone78/components/trackBottomButton.dart';
import 'package:Xylophone78/playServices.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Future tracks;
  @override
  void initState() {
    super.initState();
    tracks = syncTrack();
  }

  syncTrack() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/jsonFile/trackList.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 3, child: TitleGradient(title: 'Tracks')),
            Expanded(
              flex: 6,
              child: FutureBuilder(
                  future: tracks,
                  builder: (context, snapshot) {
                    var trackData = json.decode(snapshot.data.toString());
                    if (snapshot.data == null) {
                      return Text('Error Loading Tracks from JSON File');
                    } else
                      return ListView.builder(
                        itemCount: trackData == null ? 0 : trackData.length,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 15.0),
                        itemBuilder: (context, int index) {
                          return Column(
                            children: <Widget>[
                              TrackButton(
                                buttonBGcolor:
                                    kgradientColorList[Random().nextInt(8)],
                                buttonTextcolor: Colors.blueGrey[800],
                                buttonTitle: trackData[index]['title'],
                                trackNotes:
                                    '>Notes: ${trackData[index]['trackString']}',
                                playTrack: () {
                                  playTrack(trackData[index]['trackList']);
                                },
                              ),
                            ],
                          );
                        },
                      );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TrackBottomButton(
                  title: 'Refresh',
                  icon: Icon(Icons.refresh),
                  bgcolor: Colors.blue[900],
                  onPress: () {
                    tracks = syncTrack();
                  },
                ),
                TrackBottomButton(
                  title: 'Stop',
                  icon: Icon(Icons.stop),
                  bgcolor: Colors.red[900],
                  onPress: () {
                    stopTrack();
                  },
                ),
                TrackBottomButton(
                  title: 'Add Track',
                  icon: Icon(Icons.add),
                  bgcolor: Colors.green[800],
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
