import 'package:flutter/material.dart';

import '../widgets/composed_widgets/quiz.dart';

class QuestionsScreen extends StatelessWidget {
  static const routeName = '/questions-screen'; //add

  QuestionsScreen({super.key});

  final List<Map<String, dynamic>> questionsAnswers = [
    {
      'question': 'Who scored 100 points in a game?',
      'options': {
        '1': 'Wilt Chamberlain',
        '2': 'Dominique Wilkins',
        '3': 'Magic Johnson',
        '4': 'Tracy McGrady'
      },
      'answer': 1
    },
    {
      'question': 'Who scored 60 in his last game in the NBA?',
      'options': {
        '1': 'Kareem',
        '2': 'Larry Bird',
        '3': 'Kobe Bryant',
        '4': 'Vince Carter'
      },
      'answer': 3
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
