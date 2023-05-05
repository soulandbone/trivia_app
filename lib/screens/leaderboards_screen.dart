import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/utils/app_styles.dart';

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
              colors: [Colors.red, Colors.blue])),
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
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200))),
          )
        ],
      ),
    ));
  }
}
