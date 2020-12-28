import 'package:flutter/material.dart';


void main() => runApp(MyApp());
// void main() {runApp(MyApp());}



class MyApp extends StatelessWidget {

  /// [List is a group] ...  [escape \]
  var questionList = [
    'What\'s favorite color?',
    'What\'s favorite animal?',
  ];

  void answerQuestion(){
    print("Chosen!");

    questionIndex = questionIndex + 1;
    print(questionIndex);

  }

  int questionIndex = 0;


  /// [===== build() =====]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ"),
        ),
        body: Column(
          children: <Widget>[
            // Text("default"),
            /// Text(questionList.elementAt(0)),  /// [original way]
            // Text(questionList[0]),
            Text(questionList[questionIndex]),
            RaisedButton(
              child: Text("Answear 1"),
              onPressed: answerQuestion,  /// [pattern.1]
              /// onPressed: () => answerQuestion(),  /// [pattern.2]
              /// onPressed: () {answerQuestion();},  /// [pattern.3]
            ),
            RaisedButton(
              child: Text("Answear 2"),
              onPressed: () => answerQuestion(),
            ),
            RaisedButton(
              child: Text("Answear 3"),
              onPressed: () {answerQuestion();},
            ),




          ],
        ),



      ),
    );
  }
}
