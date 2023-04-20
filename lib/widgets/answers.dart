import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String number;
  final String answerText;

  const Answers({required this.number, required this.answerText, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('$number.'),
      title: Text(answerText),
    );
  }
}
