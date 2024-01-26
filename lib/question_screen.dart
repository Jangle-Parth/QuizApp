import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/option_button.dart';
import 'package:quizapp/resultscreen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectAnswer, {super.key});

  final void Function(String choosenanswer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentqueindex = 0;
  void nextquestion(String selectedans) {
    widget.onSelectAnswer(selectedans);
    setState(() {
      currentqueindex++;
    });
  }

  @override
  Widget build(context) {
    final currentque = questions[currentqueindex];
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentque.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          // -----------------THis----------------------
          ...currentque.getShuffledAnswers().map((option) {
            return Column(
              children: [
                OptionButton(option, () {
                  nextquestion(option);
                }),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          }),
          // --------------OR------------------------
          // OptionButton(currentque.answers[0], () {}),
          // const SizedBox(height: 20),
          // OptionButton(currentque.answers[1], () {}),
          // const SizedBox(height: 20),
          // OptionButton(currentque.answers[2], () {}),
          // const SizedBox(height: 20),
          // OptionButton(currentque.answers[3], () {}),
          // ---------------------This-----------------------
        ],
      ),
    );
  }
}
