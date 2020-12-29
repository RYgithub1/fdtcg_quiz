import 'package:fdtcg_quiz/answer.dart';
import 'package:fdtcg_quiz/question.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
// void main() {runApp(MyApp());}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }



class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  /// [List is a group] ...  [escape \]
  var _questionList = [
  // const _questionList = const [
  // final _questionList = [
  // var _questionList = const [
    // 'What\'s favorite color?',
    // 'What\'s favorite animal?',
    {   /// [MAP with keyValue]
      'questionText': 'What\'s favorite color?',
      'answer': ['Blue', 'Red', 'Green', 'Yellow'],
    },
    {   /// [MAP with keyValue]
      'questionText': 'What\'s favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elefant', 'Lion'],
    },
    {   /// [MAP with keyValue]
      'questionText': 'Who\'s your favorite mentor?',
      'answer': ['E.Mask', 'S.Jobs', 'B.Gates', 'W.Baffet'],
    },
  ];
  // _questionList = [];
  // var dummy = ["hello"];
  // dummy.add("good-bye");


  // void answerQuestion(){
  void _answerQuestion(){
    print("Chosen!");
    // questionIndex = questionIndex + 1;
    print(_questionIndex);

    /// [for StatefullW]
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

  }

  int _questionIndex = 0;


  /// [===== build() =====]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text("default"),
            /// Text(questionList.elementAt(0)),  /// [original way]
            // Text(questionList[0]),
            // Text(_questionList[_questionIndex]),
            // Question(_questionList[_questionIndex]),
            // Question(_questionList[_questionIndex][0]),
            Question(_questionList[_questionIndex]['questionText']),

            SizedBox(height: 20),
            // RaisedButton(
            //   child: Text("Answear 1"),
            ///   onPressed: answerQuestion,  /// [pattern.1]
            ///   onPressed: () => answerQuestion(),  /// [pattern.2]
            ///   onPressed: () {answerQuestion();},  /// [pattern.3]
            // ),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            /// _questionList[_questionIndex]['answer'].map((answer) {   /// [map()]
            /// [(XXX as xxx).map() keyword  says "Attention, this is specific type".]
            /// [Spread operator ... 反復可能オブジェクトの展開]
            ...(_questionList[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
