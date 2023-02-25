import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final Function ()x;
  final List<Map<String,Object>>getScore;
  const Answer(this.getScore,this.x,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
         margin:const EdgeInsets.only(top:20),
        width:1250,
         padding:const EdgeInsets.all(20.0) ,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          color: Colors.teal,
        ),
      child:TextButton(
        onPressed: x,
        child:  Text(answertext,style: const TextStyle(fontSize:30,color: Colors.white),),
      )
    );
  }
}
