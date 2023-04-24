import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/screens/questions_screen.dart';

import '../widgets/category.dart';
import '../utils/app_styles.dart';
import '../widgets/composed_widgets/points_ranking.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
        ]),
      ),
    );
  }
}
