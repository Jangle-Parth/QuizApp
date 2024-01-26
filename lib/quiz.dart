import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/home.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void choosenanswer(String answer) {
    selectedanswers.add(answer);

    if (selectedanswers.length == questions.length) {
      setState(() {
        selectedanswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = home(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen((choosenanswer) {});
    }
    if (activeScreen == 'results-screen') {
      screenWidget = const ResultScreen();
    }
    return MaterialApp(
        home: Scaffold(
      body: home(() {}),
      backgroundColor: const Color.fromARGB(255, 37, 142, 228),
    ));
  }
}
