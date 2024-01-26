import 'package:quizapp/models/quiz_question.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: \n StatelessWidget or StatefulWidget?',
    [
      'Stateless Widget',
      'Stateful Widget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
