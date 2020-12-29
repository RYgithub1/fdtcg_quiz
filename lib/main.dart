import 'package:fdtcg_quiz/answer.dart';
import 'package:fdtcg_quiz/question.dart';
import 'package:fdtcg_quiz/quiz.dart';
import 'package:fdtcg_quiz/result.dart';
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
  // var _questionList = [
  // const _questionList = const [
  // static const _questionList = [
  final _questionList = const [
    // 'What\'s favorite color?',
    // 'What\'s favorite animal?',
    {   /// [MAP with keyValue]
      'questionText': 'What\'s my favorite color?',
      'answer': [
        {'text': 'Blue'  , 'score': 4},
        {'text': 'Red'   , 'score': 2},
        {'text': 'Green' , 'score': 7},
        {'text': 'Yellow', 'score': 10},
      ],
    },
    {   /// [MAP with keyValue]
      'questionText': 'What\'s my favorite animal?',
      'answer': [
        {'text': 'Rabbit' , 'score': 9},
        {'text': 'Snake'  , 'score': 7},
        {'text': 'Elefant', 'score': 6},
        {'text': 'Lion'   , 'score': 10},
      ],
    },
    {   /// [MAP with keyValue]
      'questionText': 'Who\'s your my favorite mentor?',
      'answer': [
        {'text': 'E.Mask'  , 'score': 5},
        {'text': 'S.Jobs'  , 'score': 2},
        {'text': 'B.Gates' , 'score': 10},
        {'text': 'W.Baffet', 'score': 8},
      ],
    },
  ];
  // _questionList = [];
  // var dummy = ["hello"];
  // dummy.add("good-bye");


  var _totalScore = 0;
  // void answerQuestion(){
  void _answerQuestion(int score){

    // _totalScore = _totalScore + score;
    _totalScore += score;

    print("Chosen!");
    // questionIndex = questionIndex + 1;
    print(_questionIndex);
    // var aBool = true;
    // aBool = false;
    if (_questionIndex < _questionList.length) {
      print("comm: _questionIndex < _questionList.length");
    } else if(_questionIndex == _questionList.length) {
      print("comm: _questionIndex == _questionList.length");
    } else if(_questionIndex > _questionList.length) {
      print("comm: _questionIndex > _questionList.length");
    } else {   /// [_questionIndex == null]
      print("comm: _questionIndex == null");
    }

    /// [for StatefullW]
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  int _questionIndex = 0;

  void _resetQuiz(){
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
  }


  /// [========== build() ==========]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FAVORITE QUIZ"),
          centerTitle: true,
        ),
        body: _questionIndex < _questionList.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionList: _questionList,
              questionIndex: _questionIndex
          )
          //   Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         // Text("default"),
          //         /// Text(questionList.elementAt(0)),  /// [original way]
          //         // Text(questionList[0]),
          //         // Text(_questionList[_questionIndex]),
          //         // Question(_questionList[_questionIndex]),
          //         // Question(_questionList[_questionIndex][0]),
          //         Question(_questionList[_questionIndex]['questionText']),

          //         SizedBox(height: 20),
          //         // RaisedButton(
          //         //   child: Text("Answear 1"),
          //         ///   onPressed: answerQuestion,  /// [pattern.1]
          //         ///   onPressed: () => answerQuestion(),  /// [pattern.2]
          //         ///   onPressed: () {answerQuestion();},  /// [pattern.3]
          //         // ),
          //         // Answer(_answerQuestion),
          //         // Answer(_answerQuestion),
          //         // Answer(_answerQuestion),
          //         /// _questionList[_questionIndex]['answer'].map((answer) {   /// [map()]
          //         /// [(XXX as xxx).map() keyword  says "Attention, this is specific type".]
          //         /// [Spread operator ... 反復可能オブジェクトの展開]
          //         ...(_questionList[_questionIndex]['answer'] as List<String>).map((answer) {
          //           return Answer(_answerQuestion, answer);
          //         }).toList()
          //       ],
          // )
          : Result(_totalScore, _resetQuiz),
          // : Center(child: Text("not(_questionIndex < _questionList.length)")),
      ),
    );
  }
}
