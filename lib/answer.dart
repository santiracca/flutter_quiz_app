import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final int answerScore;
  final Function answerHandler;

  Answer(this.answerText, this.answerScore, this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: () => answerHandler(answerScore),
      ),
    );
  }
}
