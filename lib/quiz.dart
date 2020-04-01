import "package:flutter/material.dart";

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function answerQuestionHandler;
  Quiz(this.questionText, this.answers, this.answerQuestionHandler);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionText),
      ...(answers).map((answer) {
        return Answer(answer['text'], answer['score'], answerQuestionHandler);
      }).toList()
    ]);
  }
}
