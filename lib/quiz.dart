import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map questionMap;
  final Function buttonPressEventHandler;

  Quiz({
    @required this.questionMap,
    @required this.buttonPressEventHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionMap['questionText'],
        ),
        ...(questionMap['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
            buttonMap: answer,
            buttonPressEventHandler: buttonPressEventHandler,
          );
        }).toList(),
      ],
    );
  }
}
