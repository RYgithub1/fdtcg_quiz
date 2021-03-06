import 'package:flutter/material.dart';



class Result extends StatelessWidget {

  final Function resetHandler;  /// [When accept Method() -> Function Type]

  final int resultScore;
  // Result({@required this.resultScore});
  Result(this.resultScore, this.resetHandler);

  /// [getter never recieves any argu.]
  String get resultPhrase {

    String resultText = "not(_questionIndex < _questionList.length)";

    if (resultScore <= 8) {
      resultText = "Study More!";
    } else if (resultScore <= 12) {
      resultText = "Honor!";
    } else if (resultScore <= 16) {
      resultText = "Great Honor!";
    } else {
      resultText = "Highest Honor!";
    }
    return resultText;
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            // "not(_questionIndex < _questionList.length)",
            resultPhrase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            color: Colors.blue[100],
            child: Text("> Reset result"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}