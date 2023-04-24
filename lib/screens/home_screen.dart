import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/screens/questions_screen.dart';
import 'package:trivia_app/widgets/answers.dart';

import '../widgets/category.dart';
import '../utils/app_styles.dart';
import '../widgets/composed_widgets/points_ranking.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<int> numbers = [1, 2, 3, 4];
  final Map<String, String> answers = {
    '1': 'Wilt Chamberlain',
    '2': 'Dominique Wilkins',
    '3': 'Magic Johnson',
    '4': 'Tracy McGrady'
  };

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
      appBar: AppBar(title: const Text('Home Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hi, John',
              style: AppStyles.title,
            ),
          ),
          const Gap(20),
          const PointsRanking(),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(QuestionsScreen.routeName);
                  },
                  child: const Category(
                      title: 'Sports', image: 'assets/images/sports.jpg')),
              const Category(
                  title: 'Geography', image: 'assets/images/geography.jpg')
            ],
          ),
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
      ),
    );
  }
}
