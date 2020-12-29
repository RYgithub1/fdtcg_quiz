import 'package:flutter/material.dart';



class Question extends StatelessWidget {

  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,   //// [double.infinity]
      margin: EdgeInsets.all(12),
      child: new Text(
        "> "+questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,   /// [textAlign]
      ),
    );
  }
}

