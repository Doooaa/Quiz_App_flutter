import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {

  final int counteranswer;
  final Function(int s) x;
  final List<Map<String, Object>>Myquestion;
  const Quiz(this.Myquestion,this.counteranswer, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 120.0),
      width: double.infinity,
      child: Column(
        children: [
          Question(Myquestion[counteranswer]['_questionText'].toString()),
           ...(Myquestion[counteranswer]['answers'] as List<Map<String, Object>>)
              .map((answerCounter) {
            return Answer(Myquestion,()=> x(int.parse(answerCounter['score'].toString())) , answerCounter['text'].toString());
          }),
        ],
      ),
    );
  }
}
//// final List<Map<String, Object>> Myquestion;