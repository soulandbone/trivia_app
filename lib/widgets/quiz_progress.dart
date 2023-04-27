import 'package:flutter/material.dart';

class QuizzProgress extends StatelessWidget {
  const QuizzProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: const LinearProgressIndicator(
        minHeight: 10,
        color: Colors.amber,
        value: 0.15,
      ),
    );
  }
}
