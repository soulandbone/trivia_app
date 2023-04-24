import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Answers extends StatefulWidget {
  final int number;
  final String answerText;

  Answers({required this.number, required this.answerText, super.key});

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  List<Icon> icons = const [
    Icon(FontAwesomeIcons.one),
    Icon(FontAwesomeIcons.two),
    Icon(FontAwesomeIcons.three),
    Icon(FontAwesomeIcons.four),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        onTap: () => print('this is index ${widget.number}'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: Colors.blue,
        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.answerText),
      ),
    );
  }
}
