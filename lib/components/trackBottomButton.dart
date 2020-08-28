import 'package:flutter/material.dart';

class TrackBottomButton extends StatelessWidget {
  const TrackBottomButton({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onPress,
    @required this.bgcolor,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final Function onPress;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
        color: bgcolor,
        textColor: Colors.white,
        onPressed: onPress,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
