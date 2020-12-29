import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String answerText;
  Answer(this._selectHandler,  this.answerText);   /// [Need "this."]


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: RaisedButton(
          color: Colors.blue[300],
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: _selectHandler,
        ),
    );
  }
}
