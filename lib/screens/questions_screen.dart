import 'package:flutter/material.dart';
import 'package:trivia_app/widgets/composed_widgets/quiz.dart';

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
      'answer': '1'
    },
    {
      'question': 'Who scored 60 in his last game in the NBA?',
      'options': {
        '1': 'Kobe Bryant',
        '2': 'Larry Bird',
        '3': 'Kareem Abdul-Jabbar',
        '4': 'Vince Carter'
      },
      'answer': '1'
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
