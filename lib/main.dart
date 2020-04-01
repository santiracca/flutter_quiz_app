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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Tiger', 'score': 2},
        {'text': 'Monkey', 'score': 0},
      ]
    },
    {
      'questionText': 'Who\'s your favorite Instructor',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Colt', 'score': 5},
        {'text': 'Andrew', 'score': 2},
        {'text': 'Stephen', 'score': 0},
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions[_questionIndex]['questionText'],
                _questions[_questionIndex]['answers'], _answerQuestion)
            : Result(_totalScore, _resetQuiz), // Body
      ),
    );
  }
}
