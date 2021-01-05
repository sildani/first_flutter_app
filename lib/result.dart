import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result({@required this.resultScore});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore == 40) {
      resultText = 'You could not have performed worse. I have no words.';
    } else if (resultScore <= 80) {
      resultText = 'You lack taste and culture.';
    } else if (resultScore <= 120) {
      resultText =
          'You do OK for yourself. You could make better choices, though.';
    } else if (resultScore <= 160) {
      resultText = 'Wow!! You are the best!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
