import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Answers extends StatefulWidget {
  final int number;
  final String optionText;
  final int answer;

  const Answers(
      {required this.number,
      required this.optionText,
      required this.answer,
      super.key});

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  bool correctAnswer = false;

  List<Icon> icons = const [
    Icon(FontAwesomeIcons.one),
    Icon(FontAwesomeIcons.two),
    Icon(FontAwesomeIcons.three),
    Icon(FontAwesomeIcons.four),
  ];

  void checkAnswer(index) {
    setState(() {
      if (widget.answer == (index + 1)) {
        correctAnswer = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        onTap: () => checkAnswer(widget.number),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: correctAnswer ? Colors.green : Colors.red,
        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.optionText),
      ),
    );
  }
}
