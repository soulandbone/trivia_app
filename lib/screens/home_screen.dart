import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/utils/app_styles.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Column(children: const [
          Text(
            'Hi, John',
            style: AppStyles.titleStyle,
          )
        ]),
      ),
    );
  }
}
