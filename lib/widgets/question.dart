import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({required this.question, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Text(
        textAlign: TextAlign.center,
        question,
        style: AppStyles.title,
      ),
    );
  }
}
