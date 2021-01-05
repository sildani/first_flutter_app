import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('We are out of questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? new Quiz(
                questionMap: questions[_questionIndex],
                buttonPressEventHandler: _answerQuestion,
              )
            : new Result(),
      ),
    );
  }
}
