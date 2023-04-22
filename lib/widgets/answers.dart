import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Answers extends StatelessWidget {
  final int number;
  final String answerText;

  Answers({required this.number, required this.answerText, super.key});

  List<Icon> icons = const [
    Icon(FontAwesomeIcons.one),
    Icon(FontAwesomeIcons.two),
    Icon(FontAwesomeIcons.three),
    Icon(FontAwesomeIcons.four),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        onTap: () => print('this is index $number'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: Colors.blue,
        leading: icons[number], //Text('$number.'),
        title: Text(answerText),
      ),
    );
  }
}
