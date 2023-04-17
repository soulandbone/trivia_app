import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTile extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;

  const CustomTile(
      {required this.text1,
      required this.text2,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppStyles.cardColor),
      child: Row(children: const [Icon(FontAwesomeIcons.trophy)]),
    );
  }
}
