import 'package:flutter/material.dart';

class QuizzProgress extends StatefulWidget {
  const QuizzProgress({super.key});

  @override
  State<QuizzProgress> createState() => _QuizzProgressState();
}

class _QuizzProgressState extends State<QuizzProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: LinearProgressIndicator(
        minHeight: 20,
        color: Colors.amber,
        value: 0.15,
      ),
    );
  }
}
