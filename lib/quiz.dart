import 'package:flutter/material.dart';
import 'package:iamrich/answer.dart';
import 'package:iamrich/question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final Function(int) answer;
  final int quesInd;

  Quiz(this.questions,this.answer, this.quesInd);

  @override
  Widget build(BuildContext context) {
    return Container(
        child : Column(
          children: [
            Question(
              questions[quesInd]['ques'].toString(),
            ),
            ...(questions[quesInd]['answer'] as List<Map<String,Object>>).map((ans) =>
                Answer(() => answer(ans['score'] as int),ans['text'].toString())
            ).toList()
            // Answer(() => _answerQuestion('ejbfj')),
            // Answer(() => _answerQuestion('prerna')),
            // Answer(() => _answerQuestion('prerna')),
          ],
        )
    );
  }
}
