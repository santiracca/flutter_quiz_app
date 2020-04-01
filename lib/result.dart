import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function resetQuizHandler;

  Result(this.total, this.resetQuizHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text('Score is $total')),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Start again'),
          onPressed: resetQuizHandler,
        )
      ],
    );
  }
}
