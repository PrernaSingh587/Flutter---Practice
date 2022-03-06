import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String ansText;

  Answer(this.selectHandler,this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
         textColor: Colors.white,
         color : Colors.deepOrange,
         onPressed: selectHandler,
         child: Text(ansText),),
    );
  }
}
