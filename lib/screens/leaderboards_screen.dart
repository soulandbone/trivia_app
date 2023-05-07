import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/utils/app_styles.dart';
import 'package:trivia_app/widgets/leaderboards_tile.dart';
import 'package:trivia_app/widgets/podium_avatar.dart';

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
      child: SingleChildScrollView(
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
            PodiumAvatar(),
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
                  // Next assignment, use the builder to generate entries from a MAP
                  LeaderBoardsTile(
                    rank: 4,
                    userName: 'Ryan',
                    imageUrl: 'assets/images/sports.jpg',
                    score: 128000,
                  ),
                  LeaderBoardsTile(
                    rank: 2,
                    userName: 'Darian',
                    imageUrl: 'assets/images/sports.jpg',
                    score: 164000,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
