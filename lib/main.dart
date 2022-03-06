import 'package:flutter/material.dart';
import 'package:iamrich/answer.dart';
import 'package:iamrich/quiz.dart';
import 'package:iamrich/result.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}
//adding underscore implies that you cant use this class from another file

class _MyAppState extends State<MyApp> {

  var _quesInd = 0;
  var _totalScore =0;
  void _answerQuestion(int score) {
    setState(() {
      _quesInd+=1;
      _totalScore+=score;
    });
    if(_quesInd < questions.length) {
      print('We got more ques');
    } else print('No More questions');

  }
  void _resetQuiz() {
    setState(() {
      _quesInd = 0;
      _totalScore = 0;
    });
  }
  
  var questions = [
    {'ques' : 'Whats your name?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {'ques' : 'Whats your best frnds name?',
      'answer': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {'ques' : 'Whats your fav holiday destination?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(
              title: Center(child: Text('I am rch')),
              backgroundColor: Colors.blueGrey[900],
            ),
            body : SafeArea(
              child: _quesInd < questions.length ?
              Quiz(questions,_answerQuestion,_quesInd)
                  :
              Result(_totalScore,_resetQuiz),
            ),
        )
    );
  }
}

