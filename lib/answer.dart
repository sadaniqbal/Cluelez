import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answerText),
          color: ((Color(0xFFFF4F79))),
          textColor: Colors.white,
          onPressed: selectHandler),
    );
  }
}
