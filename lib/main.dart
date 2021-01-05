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
  final _questionsList = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 20},
        {'text': 'Blue', 'score': 40},
        {'text': 'Green', 'score': 10},
        {'text': 'Yellow', 'score': 30},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 30},
        {'text': 'Dog', 'score': 40},
        {'text': 'Fish', 'score': 10},
        {'text': 'Rabbit', 'score': 20}
      ],
    },
    {
      'questionText': 'What\'s your favorite dish?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Tacos', 'score': 20},
        {'text': 'Burgers', 'score': 30},
        {'text': 'Salad', 'score': 40}
      ],
    },
    {
      'questionText': 'Who is your favorite YouTuber?',
      'answers': [
        {'text': 'Naked Tutorials', 'score': 10},
        {'text': 'Tech Jesus', 'score': 40},
        {'text': 'George (Still Not Found)', 'score': 30},
        {'text': 'Wilbur Soot', 'score': 20}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questionsList.length) {
      print('We have more questions!');
    } else {
      print('We are out of questions!');
    }
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questionsList.length
            ? new Quiz(
                questionMap: _questionsList[_questionIndex],
                buttonPressEventHandler: _answerQuestion,
              )
            : new Result(resultScore: _totalScore),
      ),
    );
  }
}
