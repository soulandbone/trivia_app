import 'package:flutter/material.dart';

import '../widgets/composed_widgets/quiz.dart';

class QuestionsScreen extends StatelessWidget {
  static const routeName = '/questions-screen'; //add

  QuestionsScreen({super.key});

  final List<Map<String, dynamic>> questionsAnswers = [
    {
      'question': 'Who scored 100 points in a game?',
      'options': {
        '0': 'Wilt Chamberlain',
        '1': 'Dominique Wilkins',
        '2': 'Magic Johnson',
        '3': 'Tracy McGrady'
      },
      'answer': 0
    },
    {
      'question': 'Who scored 60 in his last game in the NBA?',
      'options': {
        '0': 'Kareem',
        '1': 'Larry Bird',
        '2': 'Kobe Bryant',
        '3': 'Vince Carter'
      },
      'answer': 2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: Quiz(questionsAnswers: questionsAnswers),
    );
  }
}
