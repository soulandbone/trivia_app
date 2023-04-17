import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import '../widgets/custom_tile.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: const [
          Text(
            'Hi, John',
            style: AppStyles.titleStyle,
          ),
          Gap(20),
          CustomTile(
              text1: 'Points',
              text2: '750',
              icon: Icon(
                FontAwesomeIcons.trophy,
                color: AppStyles.turquoise,
              ))
        ]),
      ),
    );
  }
}
