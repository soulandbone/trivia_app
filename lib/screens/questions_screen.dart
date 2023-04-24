import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/widgets/question.dart';

import '../widgets/answers.dart';

class QuestionsScreen extends StatefulWidget {
  static const routeName = '/questions-screen'; //add

  QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final List<Map<String, dynamic>> questionsAnswers = [
    {
      'question': 'Who scored 100 points in a game',
      'answers': {
        '1': 'Wilt Chamberlain',
        '2': 'Dominique Wilkins',
        '3': 'Magic Johnson',
        '4': 'Tracy McGrady'
      },
    },
    {
      'question': 'Who scored 60 in his last game in the NBA',
      'answers': {
        '1': 'Kobe Bryant',
        '2': 'Larry Bird',
        '3': 'Kareem Abdul-Jabbar',
        '4': 'Vince Carter'
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Gap(120),
        Center(child: Question(question: '${questionsAnswers[0]['question']}')),
        Expanded(
          child: ListView.builder(
            itemCount: questionsAnswers[0]['answers']
                .length, // Need to see how to cycle through all the Questions with every new Screen. Needs to be dynamic
            itemBuilder: (context, index) {
              return Center(
                  child: Answers(
                number: index,
                answerText:
                    '${questionsAnswers[0]['answers']['${index + 1}']}', // The '0' needs to be dynamic for every new page of trivia
              ));
            },
          ),
        )
      ]),
    );
  }
}
