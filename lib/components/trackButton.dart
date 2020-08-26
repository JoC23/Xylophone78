import 'package:flutter/material.dart';

class TrackButton extends StatelessWidget {
  TrackButton({
    @required this.buttonBGcolor,
    @required this.buttonTextcolor,
    @required this.buttonTitle,
    @required this.trackNotes,
    @required this.playTrack,
  });

  final Color buttonBGcolor;
  final Color buttonTextcolor;

  // TODO  try passing following 3 variables from JSON
  final String buttonTitle;
  final String trackNotes;
  // TODO create a trackList and pass it here.
  // TODO Make a generalised function.
  // TODO Rename the notes to String.
  final Function playTrack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ButtonTheme(
        height: 70.0,
        minWidth: 350.0,
        child: RaisedButton(
          color: buttonBGcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: playTrack,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  buttonTitle,
                  style: TextStyle(
                    color: buttonTextcolor,
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  trackNotes,
                  style: TextStyle(
                    color: buttonTextcolor,
                    fontSize: 12.0,
                    // fontFamily: 'Roboto Condensed',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
