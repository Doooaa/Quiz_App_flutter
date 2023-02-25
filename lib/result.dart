import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final Function() restart;

  Result(this.restart, this.totalscore);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 300, 10, 0),
      child: Center(
        child: Column(
          children: [
            Text(
              "YOUR SCORE IS ${totalscore}",
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold,),
            ),
            TextButton(
              onPressed: restart,
              child: const Text(
                "RESTART THE QUIZ?",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
