import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  static const routeName = '/questions-screen';

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile'),
      ),
      body: Column(children: [
        Container(
          child: const Text('Who scored 100 points in a single NBA game'),
        )
      ]),
    );
  }
}
