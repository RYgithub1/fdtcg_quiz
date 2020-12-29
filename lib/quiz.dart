import 'package:fdtcg_quiz/answer.dart';
import 'package:fdtcg_quiz/question.dart';
import 'package:flutter/material.dart';



class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questionList;
  final Function answerQuestion;
  // var _questionIndex;
  final int questionIndex;

  Quiz({   /// [if @required -> Need ({}) for Construvter -> Need Positional Parameta]
    @required this.answerQuestion,
    @required this.questionList,
    @required this.questionIndex,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text("default"),
                  /// Text(questionList.elementAt(0)),  /// [original way]
                  // Text(questionList[0]),
                  // Text(_questionList[_questionIndex]),
                  // Question(_questionList[_questionIndex]),
                  // Question(_questionList[_questionIndex][0]),
                  Question(questionList[questionIndex]['questionText']),

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
                  ...(questionList[questionIndex]['answer'] as List<Map<String, Object>>)
                      .map((answer) {
                        // return Answer(answerQuestion, answer["text"]);
                        return Answer(() => answerQuestion(answer['score']), answer["text"]);
                      })
                      .toList()
                ],
          );
  }
}