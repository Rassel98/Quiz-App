import 'package:flutter/material.dart';
import 'package:quiz_app_batch06/pages/quiz_page.dart';
import 'package:quiz_app_batch06/pages/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: QuizPage.routeName,
      routes: {
        QuizPage.routeName: (context) => QuizPage(),
        ResultPage.routeName: (context) => ResultPage(),
      },
    );
  }
}
