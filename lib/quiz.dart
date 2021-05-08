import 'package:flutter/material.dart';
// import 'main.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final Image photos;

  Quiz({
    this.questions,
    this.answerQuestion,
    this.questionIndex,
    this.photos,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/$questionIndex.jpg', height: 200,),
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['Score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
