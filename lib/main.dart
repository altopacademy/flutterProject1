// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your name',
      'where is your home',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasid Kuis Sederhana"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Jawaban 1'),
            ),
            RaisedButton(
              onPressed: () => print('Jawaban ke 2'),
              child: Text('Jawaban 2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Jawaban 3'),
            )
          ],
        ),
      ),
    );
  }
}
