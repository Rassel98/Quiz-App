import 'package:flutter/material.dart';
import 'package:quiz_app_batch06/pages/quiz_page.dart';

import '../question_set.dart';

class ResultPage extends StatelessWidget {
  static const String routeName = '/result';
  int rightAnswers = 0;
  ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    calculateResult();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Correct Answers'),
            Text('$rightAnswers', style: TextStyle(fontSize: 30),),
            TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, QuizPage.routeName),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }

  calculateResult() {
    for(var question in questionList) {
      if(question.givenAnswer == question.rightAnswer) {
        rightAnswers++;
      }
    }
  }
}
