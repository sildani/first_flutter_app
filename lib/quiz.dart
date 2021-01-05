import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map questionMap;
  final Function buttonPressEventHandler;

  Quiz({this.questionMap, this.buttonPressEventHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionMap['questionText'],
        ),
        ...(questionMap['answers'] as List<String>).map((answer) {
          return Answer(
            buttonLabel: answer,
            buttonPressEventHandler: buttonPressEventHandler,
          );
        }).toList(),
      ],
    );
  }
}
