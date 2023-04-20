import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/widgets/category.dart';
import '../utils/app_styles.dart';
import '../widgets/custom_tile.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          Center(
            child: Container(
              width: 275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppStyles.cardBgColor,
                  border: Border.all(width: 1, color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomTile(
                      text1: 'Points',
                      text2: '750',
                      icon: Icon(
                        FontAwesomeIcons.coins,
                        color: AppStyles.turquoise,
                      )),
                  VerticalDivider(
                    width: 4,
                    thickness: 1,
                    color: Colors.orange,
                  ),
                  CustomTile(
                      text1: 'Ranking',
                      text2: '181',
                      icon: Icon(
                        FontAwesomeIcons.trophy,
                        color: AppStyles.turquoise,
                      )),
                ],
              ),
            ),
          ),
          const Gap(20),
          const Align(
              alignment: Alignment.centerLeft,
              child:
                  Category(title: 'Sports', image: 'assets/images/sports.jpg'))
        ]),
      ),
    );
  }
}
