import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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

  @override
  Widget build(BuildContext context) {
    print(answers['1']);

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
            children: const [
              Category(title: 'Sports', image: 'assets/images/sports.jpg'),
              Category(title: 'Geography', image: 'assets/images/geography.jpg')
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Center(
                    child: Answers(
                  number: answers.keys.toList()[index],
                  answerText: 'Answer # ${answers['${index + 1}']}',
                ));
              },
            ),
          )
        ]),
      ),
    );
  }
}
