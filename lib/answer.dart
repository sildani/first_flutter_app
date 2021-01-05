import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> buttonMap;
  final Function buttonPressEventHandler;

  Answer({
    @required this.buttonMap,
    @required this.buttonPressEventHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.buttonMap['text']),
        onPressed: () => buttonPressEventHandler(this.buttonMap['score']),
      ),
    );
  }
}
