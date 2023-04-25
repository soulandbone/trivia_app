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
      margin: const EdgeInsets.only(top: 15),
      child: const LinearProgressIndicator(
        minHeight: 20,
        color: Colors.amber,
        value: 0.15,
      ),
    );
  }
}
