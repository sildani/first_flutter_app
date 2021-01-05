import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonLabel;
  final Function buttonPressEventHandler;

  Answer({this.buttonLabel, this.buttonPressEventHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.buttonLabel),
        onPressed: buttonPressEventHandler,
      ),
    );
  }
}
