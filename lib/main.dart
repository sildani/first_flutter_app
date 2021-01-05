import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Red', 'Blue', 'Green', 'Yellow'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Dog', 'Fish', 'Rabbit'],
      },
      {
        'questionText': 'What\'s your favorite dish?',
        'answers': ['Pizza', 'Pizza', 'Pizza', 'Pizza'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                buttonLabel: answer,
                buttonPressEventHandler: _answerQuestion,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
