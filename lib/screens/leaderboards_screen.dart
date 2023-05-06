import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/utils/app_styles.dart';
import 'package:trivia_app/widgets/leaderboards_tile.dart';

import '../widgets/composed_widgets/switch_three.dart';

class LeaderBoardsScreen extends StatelessWidget {
  const LeaderBoardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [AppStyles.leftGradient, AppStyles.rightGradient])),
      child: Column(
        children: [
          const Gap(40),
          const Text(
            'Leaderboards',
            style: AppStyles.title,
          ),
          SwitchThree(
              button1Text: 'All Time',
              button2Text: 'Month',
              button3Text: 'Week'),
          const Gap(110),
          Container(
            height: 510,
            //child: ListView(),
            decoration: const BoxDecoration(
                color: AppStyles.grey50,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(150, 50),
                    topRight: Radius.elliptical(150, 50))),
            child: Container(
              height: 100,
              child: ListView(children: const [
                LeaderBoardsTile(
                  rank: 4,
                  userName: 'Ryan',
                  imageUrl: 'assets/images/sports.jpg',
                ),
                LeaderBoardsTile(
                  rank: 2,
                  userName: 'Darian',
                  imageUrl: 'assets/images/sports.jpg',
                ),
              ]),
            ),
          )
        ],
      ),
    ));
  }
}
