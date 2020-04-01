import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandler;

  Answer(this.answerText, this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: answerHandler,
      ),
    );
  }
}
