import 'package:flutter/material.dart';
import 'package:trivia_app/utils/app_styles.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({required this.question, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 110,
      decoration: BoxDecoration(
          color: AppStyles.cardBgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppStyles.turquoise)),
      child: Text(
        textAlign: TextAlign.center,
        question,
        style: AppStyles.title,
      ),
    );
  }
}
