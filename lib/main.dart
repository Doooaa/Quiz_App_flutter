import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _Myquestion = [
    {
      '_questionText': 'What\'s meaning of Rest',
      'answers': [
        {'text': 'Relax', 'score': 10},
        {'text': 'Sleep', 'score': 0},
        {'text': 'Lie down', 'score': 0},
      ]
    },
    {
      '_questionText': 'What\'s meaning of Listen ',
      'answers': [
        {'text': 'Quiet', 'score': 0},
        {'text': 'Hear', 'score': 10},
        {'text': 'Whisper', 'score': 0},
      ]
    },
    {
      '_questionText': 'Choose The Right Spelling It is....',
      'answers': [
        {'text': 'Wonderfool', 'score': 0},
        {'text': 'Wonderful', 'score': 10},
        {'text': 'Wndrful', 'score': 0},
      ]
    },
    {
      '_questionText': 'Choose The Right Spelling .Are you ________?....',
      'answers': [
        {'text': 'Surprise', 'score': 0},
        {'text': 'Surprising', 'score': 0},
        {'text': 'Surprised', 'score': 10},
      ]
    },
  ];
  int _counteranswer = 0, totalscore = 0, scoreFromeQuiz = 0;

  void _anwerQuizeWithScore(int score) {
    totalscore += score;
    setState(() {
      _counteranswer += 1;
      scoreFromeQuiz = score;
    });
    selectAnswerState();
  }

  void restarQuiz() {
    setState(() {
      _counteranswer = 0;
      totalscore = 0;
    });
  }

  void selectAnswerState() {
    //if()
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          child: (_Myquestion.length > _counteranswer)
              ? Quiz(_Myquestion, _counteranswer, _anwerQuizeWithScore)
              : Result(restarQuiz, totalscore),
        )));
  }
}
