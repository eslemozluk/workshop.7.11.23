import 'package:app1/data/questions.dart';
import 'package:app1/models/quiz_questions.dart';
import 'package:app1/result_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<QuizQuestion> sorudata = questions;
  int gecerlisoruindex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > gecerlisoruindex) {
        gecerlisoruindex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResultScreen(4, 5)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final gecerlisoru = questions[gecerlisoruindex];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(gecerlisoru.question),
                  ...gecerlisoru.answers.map((answer) {
                    return ElevatedButton(
                      onPressed: changeQuestion,
                      child: Text(answer),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
